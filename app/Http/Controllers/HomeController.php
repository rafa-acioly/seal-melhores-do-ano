<?php

namespace App\Http\Controllers;

use App\Seal;
use App\SealTelecom;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('dashboard', [
            'sealsistemas' => $this->getSealSistemasData(),
            'sealtelecom'  => $this->getSealTelecomData(),
        ]);
    }

    public function detailSealSistemas($category)
    {
        $list = Seal::select('name', 'email', $category)->orderBy($category, 'desc')->get();

        return view('seal.detail', ['list' => $list, 'key' => $category]);
    }

    public function detailSealTelecom($category)
    {
        $list = SealTelecom::select('name', 'email', $category)->orderBy($category, 'desc')->get();

        return view('seal.detail', ['list' => $list, 'key' => $category]);
    }

}
