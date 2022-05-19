<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    use HasFactory;

    protected $primaryKey = 'packages_id';
    protected $table = 'packages';
    protected $fillable = [
        'packages_id',
        'package_name',
        'yearly_payment',
    ];
}
