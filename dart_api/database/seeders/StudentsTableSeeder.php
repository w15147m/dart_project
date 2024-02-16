<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StudentsTableSeeder extends Seeder
{
    public function run()
    {
        // Clear existing records to start from scratch
        DB::table('students')->truncate();

        // Insert 10 students
        for ($i = 1; $i <= 10; $i++) {
            DB::table('students')->insert([
                'name' => 'Student ' . $i,
                'address' => 'Address ' . $i,
                'contact_number' => '123456789' . $i,
                // Add other fields as needed
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
