<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistConfig extends Model
{
    protected $table = 'logistconfig';
    protected $fillable = [
        'RecargaSilo',
    ];
}
