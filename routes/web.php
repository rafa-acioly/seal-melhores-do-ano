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
 * Rotas responsaveis pela votação Seal Telecom
 */
Route::group(['middleware' => 'sealTelecomVote'], function () {
    Route::get('votacao/sealtelecom/{email}', 'SealTelecomController@index');
});
Route::post('votacao/sealtelecom/enviar', 'SealTelecomController@update');

/**
 * Rotas responsaveis pelo painel administrativo
 */
Auth::routes();
Route::get('/home', 'HomeController@index')->name('dashboard');

/**
 * Rotas responsaveis por detalhes de categorias de votação
 */

Route::get('votacao/seal/detalhes/{categoria}', 'HomeController@detailSealSistemas')->name('detailseal');
Route::get('votacao/sealtelecom/detalhes/{categoria}', 'HomeController@detailSealTelecom')->name('detailsealtelecom');
