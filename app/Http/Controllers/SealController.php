<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Seal;

class SealController extends Controller
{
    public $sealParticipants;


    public function __construct(Seal $seal)
    {
        $this->sealParticipants = $seal;
    }

    public function index($email)
    {
        dd($email);
    }
}
