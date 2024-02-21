<?php
// database/factories/CourseFactory.php

namespace Database\Factories;

use App\Models\Course;
use Illuminate\Database\Eloquent\Factories\Factory;

class CourseFactory extends Factory
{
    protected $model = Course::class;

    public function definition()
    {
        return [
            'course_name' => $this->faker->word,
            'course_code' => $this->faker->unique()->word,
        ];
    }
}
