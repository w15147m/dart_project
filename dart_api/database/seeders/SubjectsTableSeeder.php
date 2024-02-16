<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SubjectsTableSeeder extends Seeder
{
    public function run()
    {
        // Clear existing records to start from scratch
        DB::table('subjects')->truncate();

        // Insert sample subjects
        DB::table('subjects')->insert([
            ['subject_name' => 'Introduction to Programming', 'subject_code' => 'PROG101'],
            ['subject_name' => 'web app', 'subject_code' => 'PROG101'],
            ['subject_name' => 'mobile app', 'subject_code' => 'PROG101'],
            ['subject_name' => 'flutter', 'subject_code' => 'PROG1021'],
            ['subject_name' => 'java', 'subject_code' => 'PROG1011'],
            ['subject_name' => 'Calculus', 'subject_code' => 'CALC201'],
            // Add other subjects as needed
        ]);
    }
}
