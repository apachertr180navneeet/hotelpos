<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
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
/*Route::group([

    'middleware' => 'api',
    'namespace' => 'App\Http\Controllers',
    'prefix' => 'auth'

], function ($router) {

    Route::post('login', 'AuthController@login');
    Route::post('logout', 'AuthController@logout');
    Route::post('refresh', 'AuthController@refresh');
    Route::post('me', 'AuthController@me');

});*/
Route::get('/login',[AuthController::Class,'login']);
Route::get('/{storeId}/get-products',[AuthController::Class,'getProducts']);
Route::get('/{storeId}/get-products/{search}',[AuthController::Class,'getProducts']);
Route::get('/{storeId}/get-purchases',[AuthController::Class,'getPurchases']);
Route::get('/{storeId}/get-purchases/{search}',[AuthController::Class,'getPurchases']);
//Route::middleware('auth:sanctum')->get('/get-pro', [AuthController::Class,'getProducts']);


/*Route::middleware('auth:sanctum')->group(function () {
    Route::get('/profile/me', function (Request $request) {
        return $request->user();
    });
});*/
/*Route::middleware('auth:sanctum')->post('login',
[AuthController::class, 'login']);*/
