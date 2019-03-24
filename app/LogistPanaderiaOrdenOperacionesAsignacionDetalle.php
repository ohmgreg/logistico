<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogistPanaderiaOrdenOperacionesAsignacionDetalle extends Model
{
    protected $table = 'LogistPanaderiaOrdenOperacionesAsignacionDetalle';
    protected $fillable = [
        'id_OrdenDistribucion',
        'id_Distribuidora',
        'id_producto',
        'cantidad',
        'id_OrdenTransporte',
        'id_OrdenOperacionesAsignacion',
        'costo',
        'precio',
        'id_alamcenDistribucion',                
];
}
