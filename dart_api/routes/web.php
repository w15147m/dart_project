<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\Auth\AuthController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
route::get('/get/students', [StudentController::class, 'getStudent']);
route::get('/get/courses', [StudentController::class, 'getCourses']);
route::get('/get/markSheets', [StudentController::class, 'getMarkSheets']);
route::get('/get/markSheet/by/cource/', [StudentController::class, 'getMarkSheetByCourse']);
route::get('/get/markSheet/by/name', [StudentController::class, 'getMarkSheetByName']);
route::get('/get/markSheet/by/id', [StudentController::class, 'getMarkSheetById']);

