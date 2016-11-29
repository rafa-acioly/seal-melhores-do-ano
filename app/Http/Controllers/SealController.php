<?php

namespace App\Http\Controllers;

use App\Mail\Thanks;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Seal;
use Illuminate\Support\Facades\Mail;

class SealController extends Controller
{
    public $sealParticipants;
    public $voter;


    public function __construct(Seal $seal)
    {
        $this->sealParticipants = $seal;
    }

    public function index($email)
    {
        $participants = $this->sealParticipants->where('uid', '<>', $email)->where('canBeVoted', 1)->get();
        $voter = $this->sealParticipants->where('uid', $email)->first();

        return view('seal.index', [
            'participants' => $participants,
            'voter'        => $voter->id,
        ]);
    }

    public function update(Request $request)
    {
        if (!$this->canVote($request->input('voter'))) {
            return redirect('/')->with('status', 'Seu voto já foi realizado anterioemente!');
        }

        $votes = $request->except(['_token', 'voter']);

        foreach ($votes as $section => $to) {
            if (!$this->addVote($to, $section)) {
                return redirect()->back()->with('status', 'Ocorreu um erro ao computar seu voto, tente novamente mais tarde');
            }
        }

        if (!$this->disableVoter()) {
            return redirect()->back()->with('status', 'Ocorreu um erro ao computar seu voto, tente novamente mais tarde!');
        }

        return redirect('/')->with('status', 'Seu voto foi computado, obrigado!');
    }

    public function addVote($id, $section)
    {
        try {
            $participant = $this->sealParticipants->find($id);
            $participant->$section += 1;
            $participant->save();
        } catch (Exception $error) {
            Log::error('Erro ao tentar computar os votos: ' . $error->displayMessage());

            return false;
        }

        return true;
    }

    public function canVote($voterId)
    {
        $this->voter = $this->sealParticipants->find($voterId);

        if (!$this->voter->situation) return true;

        return false;
    }

    public function disableVoter()
    {
        $this->voter->situation = 1;

        if (!$this->voter->save()) return false;

        Mail::to($this->voter->email)->send(new Thanks($this->voter));
        return true;
    }
}
