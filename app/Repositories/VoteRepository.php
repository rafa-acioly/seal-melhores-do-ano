<?php
namespace App\Repositories;

class VoteRepository
{
    private $model;

    /**
     * VoteRepository constructor.
     *
     * @param $model
     * @param $userId Integer
     */
    public function __construct($model, $userId)
    {
        $this->model = $model;
        $this->model->find($userId);
    }

    public function canVote()
    {
        if (!$this->model->situation) return true;

        return false;
    }

    public function addVote()
    {

    }

    public function disableVoter()
    {

    }

}
