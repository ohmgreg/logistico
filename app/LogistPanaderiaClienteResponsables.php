<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogistPanaderiaClienteResponsables extends Model
{
    //
    protected $table = 'LogistPanaderiaClienteResponsables';
    protected $fillable = [
                            'nombre',
                            'cedula',
                            'email',
                            'telefono',
                            'id_panaderia',
                            'direccion',
                            'validaemail',
                            'validacorreo',
                            'validasms',
                            'validacedula',
                            'validafoto',
                            'activo',
    ];
}
