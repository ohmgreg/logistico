<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistPanaderiaSiloAlmacenManoFactura extends Model
{

    protected $table = 'logistpanaderiasiloalmacenmanofactura';
    protected $fillable = [
        'id_incorporacion',
        'id_silo',
        'id_producto',
        'manofacturado',
    ];
}
