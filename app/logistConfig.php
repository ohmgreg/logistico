<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistConfig extends Model
{
    protected $table = 'logistConfig';
    protected $fillable = [
        'RecargaSilo',
    ];
}
