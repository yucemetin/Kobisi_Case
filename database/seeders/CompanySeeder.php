<?php

namespace Database\Seeders;

use App\Company;
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
        Company::factory()->count(10)->create()->each(function($company) {
            $token = $company->createToken("authToken")->plainTextToken;
            $company->access_token = $token;
            $company->save();
        });
        /*factory(App\Company::class, 10)->create()->each(function($company) {
            $token = $company->createToken("authToken")->plainTextToken;
            $company->access_token = $token;
            $company->save();
        });*/
    }
}
