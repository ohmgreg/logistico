<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistpanaderiaCliente extends Model
{
    //
    protected $table = 'logistpanaderiaCliente';
    protected $fillable = [
                            'NombrePanaderia',
                            'rif',
                            'FechaConstitucion',
                            'direccion',
                            'telefono',
                            'twitter',
                            'facebook',
                            'instagran',
                            'capacidadinstalada',
                            'email',
                            'validaemail',
                            'validadocumento',
                            'SolicitudDeSupervicion',
                            'suspendido',
                            'observacionSuspencion',
                            'findelasuspencion',
                            'id_municipio',
                            'id_parroquia',
                            'MotivoSolicitudDeSupervicion',
                            'tokenmail',
                            'tokensms',
        
    ];
}
