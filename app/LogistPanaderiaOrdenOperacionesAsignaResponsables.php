<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistpanaderiaordenoperacionesasignaresponsables extends Model
{
    protected $table = 'logistpanaderiaordenoperacionesasignaresponsables';
    protected $fillable = [
        'id_OrdenOperaciones',
        'id_Responsable',                               
    ]; 
}
