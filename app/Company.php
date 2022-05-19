<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;

class Company extends Model
{
    use HasFactory, HasApiTokens;

    protected $primaryKey = "company_id";

    protected $table = 'companies';
    protected $fillable = [
        'site_url',
        'name',
        'lastname',
        'company_name',
        'email',
        'password',
        'access_token',
        'updated_at',
        'created_at',
    ];

    public function package()
    {
        return $this->hasMany(CompanyPackages::class, 'company_id', 'company_id')->latest()->first();
    }

    public function packages()
    {
        return $this->hasMany(CompanyPackages::class, 'company_id', 'company_id');
    }
    public function payments()
    {
        return $this->hasMany(CompanyPayments::class, 'company_id', 'company_id');
    }

}
