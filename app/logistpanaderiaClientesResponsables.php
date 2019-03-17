<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistpanaderiaClientesResponsables extends Model
{
    //
    protected $table = 'logistpanaderiaClientesResponsables';
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
