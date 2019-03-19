<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogistPanaderiaClienteAsignacion extends Model
{
    //
    protected $table = 'LogistPanaderiaClienteAsignacion';
    protected $fillable = [
                            'id_producto',
                            'id_panaderia',
                            'cantidad',
                            'ultimodespacho',
                            'activo',
    ];
}
