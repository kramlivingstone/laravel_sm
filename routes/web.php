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

Route::post('/add/{id}', 'FriendRequestController@addFriend');


Route::get('/add_friend', 'ProfileController@showProfiles');

Route::get('/profile/{id}', 'ProfileController@showUserProfile');

Auth::routes();

Route::get('/', 'HomeController@index')->name('home');
