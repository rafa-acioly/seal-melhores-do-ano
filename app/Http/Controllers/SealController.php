<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Seal;
use App\Repositories\VoteRepository;

class SealController extends Controller
{
    public $sealParticipants;
    public $voter;
    public $repository;


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
        $voter = $this->sealParticipants->find($request->input('voter'));

        $this->repository = new VoteRepository(new Seal(), $voter->id);

        if (!$this->repository->canVote()) {
            return redirect('/')->with('error', 'voto já computado');
        }

        $votes = $request->except(['_token', 'voter']);

        foreach ($votes as $section => $to) {
            if ($this->repository->addVote($to, $section)) {
                return redirect()->back->with('status', 'Ocorreu um erro ao processar sua votação, tente novamente mais tarde');
            }
        }

        if (!$this->repository->disableVoter()) {
            return redirect()->back()->with('status', 'Ocorreu um erro ao computar seu voto, tente novamente mais tarde!');
        }

        $this->repository->finishVote();
        return redirect('/')->with('status', 'Obrigado!');
    }
}
