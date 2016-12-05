<?php
namespace App\Repositories;

use App\Mail\Thanks;
use Illuminate\Support\Facades\Mail;

class VoteRepository
{
    private $model;
    private $participant;
    private $voter;
    /**
     * VoteRepository constructor.
     *
     * @param $model
     * @param $userId Integer
     */
    public function __construct($model, $userId)
    {
        $this->model = $model;
        $this->voter = $this->model->find($userId);
    }

    public function canVote()
    {
        if (!$this->voter->situation) return true;

        return false;
    }

    public function addVote($id, $section)
    {
        try {
            $this->participant = $this->model->find($id);
            $this->participant->{$section} += 1;
            $this->participant->save();
        } catch (Exception $error) {
            Log::error('Erro ao tentar computar os votos: ' . $error->displayMessage());

            return false;
        }
    }

    public function disableVoter()
    {
        $this->voter->situation = 1;

        if (!$this->voter->save()) return false;

        return true;
    }

    public function finishVote(Array $data)
    {
        Mail::to($this->voter->email)
            ->send(new Thanks($this->voter, ['email' => $data['email'], 'name' => $data['name']]));
    }

}
