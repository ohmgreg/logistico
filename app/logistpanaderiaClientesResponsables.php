<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogistPanaderiaClientesResponsables extends Model
{
    //
    protected $table = 'LogistPanaderiaClientesResponsables';
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
