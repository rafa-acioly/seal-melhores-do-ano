<?php

namespace App\Http\Controllers;

use App\Repositories\VoteRepository;
use Illuminate\Http\Request;
use App\SealTelecom;

class SealTelecomController extends Controller
{
    public $sealTelecomParticipants;
    public $repository;
    public $voter;


    public function __construct(SealTelecom $sealTelecomParticipants)
    {
        $this->sealTelecomParticipants = $sealTelecomParticipants;
    }

    public function index($email)
    {
        $participants = $this->sealTelecomParticipants->where('uid', '<>', $email)->where('canBeVoted', 1)->orderBy('name', 'asc')->get();
        $voter = $this->sealTelecomParticipants->where('uid', $email)->first();

        return view('sealTelecom.index', [
            'participants' => $participants,
            'voter'        => $voter->id,
        ]);
    }

    public function update(Request $request)
    {
        $voter = $this->sealTelecomParticipants->find($request->input('voter'));

        $this->repository = new VoteRepository(new SealTelecom(), $voter->id);

        if (!$this->repository->canVote()) {
            return redirect('/')->with('error', 'Seu voto já foi computado!');
        }

        $votes = $request->except(['_token', 'voter']);

        foreach ($votes as $section => $to) {
            if ($this->repository->addVote($to, $section)) {
                return redirect()->back->with('error', 'Ocorreu um erro ao processar sua votação, tente novamente mais tarde');
            }
        }

        if (!$this->repository->disableVoter()) {
            return redirect()->back()->with('error', 'Ocorreu um erro ao computar seu voto, tente novamente mais tarde!');
        }

        $this->repository->finishVote(['email' => 'pesquisarh@sealtelecom.com.br', 'name' => 'Seal Telecom']);
        return redirect('/')->with('success', 'Obrigado!');
    }

}
