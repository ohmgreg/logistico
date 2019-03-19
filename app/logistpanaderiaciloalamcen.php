<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistpanaderiaciloalamcen extends Model
{
    protected $table = 'logistpanaderiaciloalamcen';
    protected $fillable = [
        'id_cilo',
        'id_producto',
        'cantidad',
        'merma',
    ];
}
