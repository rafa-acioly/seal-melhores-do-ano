<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SealTelecom;

class SealTelecomController extends Controller
{
    public $sealTelecomParticipants;

    /**
     * SealTelecomController constructor.
     *
     * @param $sealTelecomParticipants
     */
    public function __construct(SealTelecom $sealTelecomParticipants)
    {
        $this->sealTelecomParticipants = $sealTelecomParticipants;
    }

    public function index($email)
    {
        dd($email);
    }

}
