<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::get('/login', function () {
    return response()->json([
        'success' => false,
        'message' => 'Unauthorized'
    ], 401);
})->name('login');
 

Route::post('/login', 'AuthController@login');
Route::post('/register', 'AuthController@register');

Route::post('/logout', 'AuthController@logout');
// Route::middleware('auth:api')->group(function () {

    Route::get('/home', 'HomeController@home')->name('home');
    //  Route::get('/', function () {
    //      return view('login.index');
    //  });
    //Route::get('/logout', 'LogoutController@index')->name('logout');

    Route::get('/', 'LoginController@login')->name('login');
    Route::post('/', 'LoginController@verify')->name('verify');


  

    Route::get('/index', 'dashboardController@index');
    Route::get('/dashboard', 'dashboardController@dashboard')->name('dashboard');
    Route::get('/EmployeeList', 'EmployeeController@index');
    Route::get('/inbox', 'MessageBoxController@inbox')->name('inbox');

    Route::get('/vehicle', 'VehicleController@vehicle')->name('vehicle');
    Route::post('/vehicle/create', 'VehicleController@submit');
    Route::post('/vehicle/update/{id}', 'VehicleController@update');
    Route::delete('/vehicle/delete/{id}', 'VehicleController@delete');
    Route::get('/vehicle/singleShow/{id}', 'VehicleController@singleShow');
    Route::get('/vehicle/show', 'VehicleController@show');

    Route::get('/guide', 'GuideController@guide')->name('guide');
    Route::post('/guide', 'GuideController@submit');
    Route::get('/guide/show', 'GuideController@show');
    Route::post('/guide/update/{id}', 'GuideController@update');
    Route::delete('/guide/delete/{id}', 'GuideController@delete');
    Route::get('/guide/singleShow/{id}', 'GuideController@singleShow');

    // Route::post('/user/{id}', 'UserController@update');
    Route::get('/hotel/show', 'HotelController@show');
    Route::get('/hotel/singleShow/{id}', 'HotelController@singleShow');
    Route::post('/hotel/update/{id}', 'HotelController@update');
    Route::delete('/hotel/destroy/{id}', 'HotelController@destroy');

    Route::post('/tourist/create', 'TouristController@create');
    Route::get('/tourist/show', 'TouristController@show');
    Route::get('/tourist/singleShow/{id}', 'TouristController@singleShow');
    Route::post('/tourist/update/{id}', 'TouristController@update');
    Route::delete('/tourist/delete/{id}', 'TouristController@delete');


    Route::get('/report', 'ReportController@report');
    Route::get('/report/create', 'ReportController@create');
    Route::get('/report/show', 'ReportController@show');
    Route::post('/report/create', 'ReportController@store');
    Route::post('/report/update/{id}', 'ReportController@update');
    Route::get('/report/singleShow/{id}', 'ReportController@singleShow');
    Route::get('/report/delete/{id}', 'ReportController@delete');



    Route::get('/message', 'MessageBoxController@message')->name('message');
    Route::get('/compose', 'MessageBoxController@compose')->name('compose');
    Route::get('/msg', 'MessageBoxController@msg')->name('msg');
    Route::get('/search', 'MessageBoxController@search')->name('search');
    Route::get('/calendar', 'MessageBoxController@calendar')->name('calendar');
    Route::get('/data', 'TableController@data')->name('data');
    Route::get('/export', 'TableController@export')->name('export');
// });

