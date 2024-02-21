<?php
// app/Models/Subject.php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    protected $fillable = ['subject_name', 'subject_code'];

    public function courses()
    {
        return $this->belongsToMany(Course::class, 'course_subjects');
    }

    public function marksheets()
    {
        return $this->hasMany(Marksheet::class);
    }
}
