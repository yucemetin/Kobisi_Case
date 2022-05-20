<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CompanyPackages extends Model
{
    use HasFactory;

    protected $table = 'company_packages';
    protected $fillable = [
        'id',
        'company_id',
        'packages_id',
        'start_date',
        'end_date',
    ];

    public function package(){
        return $this->hasOne(Package::class, 'packages_id', 'packages_id')->first();
    }


}
