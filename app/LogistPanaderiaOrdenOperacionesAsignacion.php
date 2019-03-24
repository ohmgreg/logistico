<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogistPanaderiaOrdenOperacionesAsignacion extends Model
{
    protected $table = 'logistpanaderiaordenoperacionesasignacion';
    protected $fillable = [
        'id_OrdenDeOperaciones',
        'id_panadera',
        'fechaAsignacion',
        'fechadespacho',
        'nodeposito',
        'banco',
        'pesoTN',
        'Costo',
        'Venta',
        'completado',
        'validasms',
        'validaemail',
        'NotificadoPhone',
        'NotificadoSMS',
        'NotificadoEmail',       
                   
]; 
}
