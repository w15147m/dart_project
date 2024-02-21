<?php
// app/Models/Marksheet.php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Marksheet extends Model
{
    protected $fillable = ['student_id', 'subject_id', 'marks'];

    public function student()
    {
        return $this->belongsTo(Student::class);
    }

    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }
}
