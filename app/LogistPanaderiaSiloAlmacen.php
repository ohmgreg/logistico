<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogistPanaderiaSiloAlmacen extends Model
{
    protected $table = 'logistpanaderiasiloalmacen';
    protected $fillable = [
                            'id_Silo',
                            'id_producto',
                            'cantidad',
                            'merma'
    ];
}
