<?php

namespace Database\Factories;

use App\Package;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;

class CompanyPackagesFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $current = Carbon::now();
        $end = Carbon::now();
        $package = Package::find(rand(1,6));

        if ($package->yearly_payment) {
            $end->addYear();
        } else {
            $end->addMonth();
        }

        return [
            'packages_id' => $package->packages_id,
            'start_date' => $current,
            'end_date' => $end
        ];
    }
}
