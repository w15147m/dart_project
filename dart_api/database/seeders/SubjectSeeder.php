<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Subject;

class SubjectSeeder extends Seeder
{
    public function run()
    {
        // Clear existing records to start from scratch
        Subject::truncate();

        // Insert sample subjects
        Subject::create(['subject_name' => 'Math', 'subject_code' => 'MATH']);
        Subject::create(['subject_name' => 'Physics', 'subject_code' => 'PHYS']);
        Subject::create(['subject_name' => 'Chemistry', 'subject_code' => 'CHEM']);
        // Add more subjects as needed
    }
}
