<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class CompanyPaymentsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'is_paid' => $this->faker->boolean(),
            'amount' =>$this->faker->randomFloat(9,499),
        ];
    }
}
