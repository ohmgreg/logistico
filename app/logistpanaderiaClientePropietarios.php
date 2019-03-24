<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogistPanaderiaClientePropietarios extends Model
{
    //
    protected $table = 'logistpanaderiaclientepropietarios';
    protected $fillable = [
                            'nombre',
                            'cedula',
                            'id_panaderia',
                            'niveldeacciones',
                            'telefono_ppal',
                            'correo',
                            'direccion',
                            'validatelefono',
                            'validaemail',
                            'validasms',
                            'validacedula',
                            'validafoto',
                            'activo',        
    ];
}
