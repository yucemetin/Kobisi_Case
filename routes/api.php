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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('register', ["uses" => "\App\Http\Controllers\CompanyController@register"]);
Route::post('company/packages', ["uses" => "\App\Http\Controllers\CompanyPackageController@store"]);
Route::post('company/packages/check', ["uses" => "\App\Http\Controllers\CompanyPackageController@checkPackage"]);
