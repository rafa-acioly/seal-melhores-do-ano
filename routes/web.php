<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', function () {
    return view('home');
});

Route::group(['middleware' => 'sealVote'], function () {
    Route::get('votacao/seal/{email}', 'SealController@index');
});


Route::group(['middleware' => 'sealTelecomVote'], function () {
    Route::get('votacao/sealtelecom/{email}', 'SealTelecomController@index');
});
