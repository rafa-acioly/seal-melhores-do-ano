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

/**
 * Rotas responsaveis pela votação Seal Sistemas
 */
Route::group(['middleware' => 'sealVote'], function () {
    Route::get('votacao/seal/{email}', 'SealController@index');
});
Route::post('votacao/seal/enviar', 'SealController@update');


/**
 * Rotas resposnaveis pela votação Seal Telecom
 */
Route::group(['middleware' => 'sealTelecomVote'], function () {
    Route::get('votacao/sealtelecom/{email}', 'SealTelecomController@index');
});
Route::post('votacao/sealtelecom/enviar', 'SealTelecomController@update');

