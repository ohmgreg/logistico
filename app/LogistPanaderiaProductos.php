<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogistPanaderiaProductos extends Model
{
    protected $table = 'logistpanaderiaproductos';
    protected $fillable = [
        'nombre',
        'peso',
        'id_presentacion'        
    ]; 
}
