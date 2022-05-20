<?php

namespace Database\Factories;

use App\Models\Company;
use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Generator as Faker;
use Illuminate\Support\Facades\Hash;
use Illuminate\Testing\Fluent\Concerns\Has;

class CompanyFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {

        return [
            'site_url' => $this->faker->domainName(),
            'name' => $this->faker->firstName(),
            'lastname' => $this->faker->lastName(),
            'company_name'=>$this->faker->company(),
            'email' => $this->faker->unique()->safeEmail(),
            'password' => Hash::make($this->faker->password()),
        ];
    }
}
