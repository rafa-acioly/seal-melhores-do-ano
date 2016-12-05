<?php

namespace App\Http\Controllers;

use App\Models\Participant;
use Illuminate\Http\Request;

class ParticipantController extends Controller
{

    public $participant;

    public function __construct(Participant $participant) {

        $this->participant = $participant;
    }

    public function index($email) {

        $participants = $this->participant->where('uid', '<>', $email)->get();

        return view('home', ['participants' => $participants]);
    }
}
