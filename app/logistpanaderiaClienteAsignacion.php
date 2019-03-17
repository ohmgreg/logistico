<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistpanaderiaClienteAsignacion extends Model
{
    //
    protected $table = 'logistpanaderiaClienteAsignacion';
    protected $fillable = [
                            'id_producto',
                            'id_panaderia',
                            'cantidad',
                            'ultimodespacho',
                            'activo',
    ];
}
