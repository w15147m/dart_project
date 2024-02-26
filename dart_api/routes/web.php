<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\Auth\AuthController;

Route::get('/', function () {
    return view('welcome');
});
route::get('/get/students', [StudentController::class, 'getStudent']);
route::get('/get/courses', [StudentController::class, 'getCourses']);
route::get('/get/markSheets', [StudentController::class, 'getMarkSheets']);
route::get('/get/markSheet/by/cource/', [StudentController::class, 'getMarkSheetByCourse']);
route::get('/get/markSheet/by/name/{name}', [StudentController::class, 'getMarkSheetByName']);
route::get('/get/markSheet/by/id/{id}', [StudentController::class, 'getMarkSheetById']);

