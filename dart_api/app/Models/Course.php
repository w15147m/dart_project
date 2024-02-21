<?php
// app/Models/Course.php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    protected $fillable = ['course_name', 'course_code'];

    public function enrollments()
    {
        return $this->hasMany(Enrollment::class);
    }

    public function subjects()
    {
        return $this->belongsToMany(Subject::class, 'course_subjects');
    }

    public function attendances()
    {
        return $this->hasMany(Attendance::class);
    }

}
