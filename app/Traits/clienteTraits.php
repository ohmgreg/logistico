<?php

namespace App\Traits;
use DB;
use App\logistpanaderiaCliente;
use App\logistpanaderiaClienteAsignacion;
use App\logistpanaderiaClientePropietarios;
use App\logistpanaderiaClientesResponsables;
use Illuminate\Queue\Console\RetryCommand;


trait clienteTraits
{

    // Registro de la Panaderia
    public function InsertBakery($data){
        return logistpanaderiaCliente::create([
            'NombrePanaderia' => $data['NombrePanaderia'],
            'rif' => $data['rif'],
            'FechaConstitucion' => $data['FechaConstitucion'],
            'direccion'=> $data['direccion'],
            'telefono'  => $data['telefono'],
            'twitter'=> $data['twitter'],
            'facebook'=> $data['facebook'],
            'instagran'=> $data['instagran'],
            'capacidadinstalada'  => $data['capacidadinstalada'],
            'email'=> $data['email'],
            'id_municipio'=> $data['id_municipio'],
            'id_parroquia'=> $data['id_parroquia']                           
        ]);
        // Fín de Registra Panaderia
    }


    //Modifica Panaderia
    public function UpdateBakery($data){
        return logistpanaderiaCliente::where('id', $data['id'])
        ->update([
            'NombrePanaderia' => $data['NombrePanaderia'],
            'rif' => $data['rif'],
            'FechaConstitucion' => $data['FechaConstitucion'],
            'direccion'=> $data['direccion'],
            'telefono'  => $data['telefono'],
            'twitter'=> $data['twitter'],
            'facebook'=> $data['facebook'],
            'instagran'=> $data['instagran'],
            'capacidadinstalada'  => $data['capacidadinstalada'],
            'email'=> $data['email'], 
            'id_municipio'=> $data['id_municipio'],
            'id_parroquia'=> $data['id_parroquia']   
        ]);
        //Fin de Modidificar  panaderia
    }

    // Mostrar Una panaderia
     public function ShowBakery($data) {
        return logistpanaderiaCliente::find($data['id']);
        // Fin de Mostrar Panaderia
     }

    //Listando Panaderias
    public function tolistBakery($data){
        return logistpanaderiaCliente::all();
        //Fin de Listar panaderias
    }

    //Cambiar el status (1 = Activo, 0 = Bloqueado)
    public function UpdateStatusBakery($data){
        return logistpanaderiaCliente::where('id', $data['id'])
        ->update([
            'suspendido'=> $data['suspendido'],
            'observacionSuspencion'=> $data['observacionSuspencion'],
            'findelasuspencion'=> $data['findelasuspencion'],
        ]);
        //Fin de Actualizar el Status
    }
    
    //validar el correo (1 = Validado, 0 = No Validado)
    public function ValidateMailBakery($data){
        return logistpanaderiaCliente::where('id', $data['id'])
        ->update([
            'validaemail'=> $data['validaemail'],
        ]);
        //Fin de Validar Correo
    }

    //validar el Acta Constitutiva (1 = Validado, 0 = No Validado)
    public function ValidateDocumentBakery($data){
        return logistpanaderiaCliente::where('id', $data['id'])
        ->update([
            'validadocumento'=> $data['validadocumento'],
        ]);
        // Fin de validar Documento
    }

    //Solicitar inspección
    public function RequestInspectionBakery($data){
        return logistpanaderiaCliente::where('id', $data['id'])
        ->update([
            'SolicitudDeSupervicion'=> $data['SolicitudDeSupervicion'],
            'MotivoSolicitudDeSupervicion' => $data['MotivoSolicitudDeSupervicion'],
        ]);
        //Fin de Solicitud de Inspección
    }

    // Agregar Propietario
    public function AddOwnerBakery($data){
        return logistpanaderiaClientePropietarios::create([
            'nombre' => $data['nombre'],
            'cedula' => $data['cedula'],
            'id_panaderia' => $data['id_panaderia'],
            'niveldeacciones' => $data['niveldeacciones'],
            'telefono_ppal' => $data['telefono_ppal'],
            'correo' => $data['correo'],
            'direccion' => $data['direccion'],
            'tokenmail' => str_random(6),
            'tokensms' =>  str_random(25)    
                       
        ]);
        //Fin de Agregar Propietario
    }

    // Quitar Propietatio
    public function RemoveOwnerBakery($data){
        return logistpanaderiaClientePropietarios::where('id', $data['id'])
        ->update([
            'activo'=> $data['activo'],
        ]);
        //Fin de quitar Propietario
    }

    // Modificar propietario
    public function UpdateOwnerBakery($data){
        return logistpanaderiaClientePropietarios::where('id', $data['id'])
        ->update([
            'nombre' => $data['nombre'],
            'cedula' => $data['cedula'],
            'id_panaderia' => $data['id_panaderia'],
            'niveldeacciones' => $data['niveldeacciones'],
            'telefono_ppal' => $data['telefono_ppal'],
            'correo' => $data['correo'],
            'direccion' => $data['direccion'],
        ]);

        //Fin de modificar propietario
    }

        //Validar Teléfono Propietario
    public function ValidPhoneOwnerBakery($data){
        if(logistpanaderiaClientePropietarios::where('tokensms', $data['tokensms'])->count() > 0){
            return logistpanaderiaClientePropietarios::where('id', $data['id'])
            ->update([
                'validatelefono'=> '1',
            ]);
        }

        //Fin validar teléfono propietario
    }

        //Validar Teléfono Propietario
    public function ValidMailOwnerBakery($data){
            if(logistpanaderiaClientePropietarios::where('tokenmail', $data['tokenmail'])->count() > 0){
                return logistpanaderiaClientePropietarios::where('id', $data['id'])
                ->update([
                    'validatelefono'=> '1',
                ]);
            }
            //Fin validar teléfono propietario
        }



        

    //Fin de traits
}