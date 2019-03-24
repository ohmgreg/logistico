<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistpanaderiaordenoperaciones extends Model
{
    protected $table = 'logistpanaderiaordenoperaciones';
    protected $fillable = [
        'fechainicio',
        'fechafin',
        'codigo',
        'id_OrdenDistribucion',
        'activa',                     
    ]; 
}
