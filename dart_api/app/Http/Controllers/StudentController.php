<?php

namespace App\Http\Controllers;
use App\Models\Student;
use App\Models\Course;
use Illuminate\Http\Request;

class StudentController extends Controller
{
  public function getStudent(){
    $Student = Student::get();
    return $Student;
  }
  public function getCourses(){
    $data = Course::get();
    return $data;
  }
}
