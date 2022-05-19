<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CompanyPayments extends Model
{
    use HasFactory;

    protected $table = 'company_payments';
    protected $fillable = [
        'company_id',
        'is_paid',
        'amount'
    ];
}
