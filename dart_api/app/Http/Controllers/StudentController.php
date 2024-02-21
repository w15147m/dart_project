<?php

namespace App\Http\Controllers;

use App\Models\Student;
use App\Models\Course;
use App\Models\Marksheet;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    public function getStudent()
    {
        $Student = Student::get();
        return $Student;
    }
    public function getCourses()
    {
        $data = Course::get();
        return $data;
    }
    public function getMarkSheets()
    {
        $markSheets =  Student::with(['enrollments.course', 'marksheets.subject'])->get();
        return $markSheets;

    }
    public function getMarkSheetByCourse()
    {
        $markSheets =  Student::whereHas('enrollments.course', function ($query) {
            $query->where('course_name', 'course_name 1');
        })->with(['enrollments.course', 'marksheets.subject'])->get();
        return $markSheets;
    }
    public function getMarkSheetById()
    {
        $markSheets = Student::with(['enrollments.course', 'marksheets.subject'])->find(3);
        return $markSheets;
    }
    public function getMarkSheetByName()
    {
        $markSheets = $student = Student::with(['enrollments.course', 'marksheets.subject'])
            ->where('name', 'name 1')
            ->get();
        return $markSheets;
    }
}