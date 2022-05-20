<?php

namespace Database\Seeders;

use App\Models\Company;
use App\Models\CompanyPackages;
use App\Models\CompanyPayments;
use Illuminate\Database\Seeder;

class CompanySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Company::factory()->count(10)->create()->each(function ($company) {
            $token = $company->createToken("authToken")->plainTextToken;
            $company->access_token = $token;
            $company->save();

            $company->packages()->save(CompanyPackages::factory()->make());
            $company->payments()->save(CompanyPayments::factory()->make());
        });
    }
}
