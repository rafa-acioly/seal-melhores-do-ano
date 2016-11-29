<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Facades\DB;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function getSealSistemasData()
    {
        $sealSistemasData = [
            'teamWork'         => DB::table('seals')->select('name', 'teamWork')->orderBy('teamWork', 'desc')->take(5)->get(),
            'proActivity'      => DB::table('seals')->select('name', 'proActivity')->orderBy('proActivity', 'desc')->take(5)->get(),
            'deliveryOfResult' => DB::table('seals')->select('name', 'deliveryOfResult')->orderBy('deliveryOfResult', 'desc')->take(5)->get(),
        ];

        return $sealSistemasData;
    }

    public function getSealTelecomData()
    {
        $sealTelecomData = [
            'commitment'              => DB::table('seal_telecoms')->select('name', 'commitment')->orderBy('commitment', 'desc')->take(5)->get(),
            'proActivity'             => DB::table('seal_telecoms')->select('name', 'proActivity')->orderBy('proActivity', 'desc')->take(5)->get(),
            'superation'              => DB::table('seal_telecoms')->select('name', 'superation')->orderBy('superation', 'desc')->take(5)->get(),
            'teamWork'                => DB::table('seal_telecoms')->select('name', 'teamWork')->orderBy('teamWork', 'desc')->take(5)->get(),
            'planningAndOrganization' => DB::table('seal_telecoms')->select('name', 'planningAndOrganization')->orderBy('planningAndOrganization', 'desc')->take(5)->get(),
        ];

        return $sealTelecomData;
    }
}
