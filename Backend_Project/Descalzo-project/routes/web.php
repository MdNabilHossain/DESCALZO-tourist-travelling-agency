<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Route;

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

Route::get('/home', 'HomeController@home')->name('home');
//  Route::get('/', function () {
//      return view('login.index');
//  });
Route::get('/logout', 'LogoutController@index')->name('logout');

Route::get('/', 'LoginController@login')->name('login');
Route::post('/', 'LoginController@verify')->name('verify');
Route::group(['middleware' => ['sess']], function () {

    Route::get('/index', 'dashboardController@index');
    Route::get('/dashboard', 'dashboardController@dashboard')->name('dashboard');
    Route::get('/EmployeeList', 'EmployeeController@index');
    Route::get('/inbox', 'MessageBoxController@inbox')->name('inbox');
    Route::get('/vehicle', 'VehicleController@vehicle')->name('vehicle');
    Route::post('/vehicle', 'VehicleController@submit');

    Route::get('/guide', 'GuideController@guide')->name('guide');
    Route::post('/guide', 'GuideController@submit');

    // Route::post('/user/{id}', 'UserController@update');
    Route::get('/hotel', 'HotelController@index');
    Route::get('/hotel/edit/{id}', 'HotelController@edit');
    Route::get('/hotel/update/{id}', 'HotelController@update');
    Route::delete('/hotel/destroy/{id}', 'HotelController@destroy');


    Route::get('/report', 'ReportController@report');
    Route::get('/report/create', 'ReportController@create');
    Route::post('/report/create', 'ReportController@store');



    Route::get('/message', 'MessageBoxController@message')->name('message');
    Route::get('/compose', 'MessageBoxController@compose')->name('compose');
    Route::get('/msg', 'MessageBoxController@msg')->name('msg');
    Route::get('/search', 'MessageBoxController@search')->name('search');
    Route::get('/calendar', 'MessageBoxController@calendar')->name('calendar');
    Route::get('/data', 'TableController@data')->name('data');
    Route::get('/export', 'TableController@export')->name('export');
});
