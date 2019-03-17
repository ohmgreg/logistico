<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistpanaderiaClientePropietarios extends Model
{
    //
    protected $table = 'logistpanaderiaClientePropietarios';
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
