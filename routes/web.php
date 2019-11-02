<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/donate', function(){
    return view('testform');
});

Route::post('/donate', 'DemoController@makeTransaction');

Route::get('/orgs', 'DemoController@readOrganizations');
Route::get('/orgs/{category}', 'DemoController@readOrganizationsByCat');
Route::post('/orgs/search', 'DemoController@searchOrganizations');

