<?php

namespace App\Http\Controllers;

use App\Participant;
use Illuminate\Http\Request;

class ParticipantController extends Controller
{
    public $participant;

    public function __construct(Participant $participant)
    {
        $this->participant = $participant;
    }

    public function index($email)
    {
        $currentUser = $this->participant
            ->where('uid', $email)
            ->first();

        return view('home', ['user' => $currentUser]);
    }
}
