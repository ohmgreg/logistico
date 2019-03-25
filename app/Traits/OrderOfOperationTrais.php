<?php

namespace App\Traits;
use DB;
use App\logistpanaderiaordenoperaciones;
use App\logistpanaderiaordenoperacionesasignaresponsables;
use App\logistpanaderiaordenoperacionesresponsables;
use App\LogistConfig;
use App\LogistPanaderiaDistribucionOrden;
use App\LogistPanaderiaOrdenOperacionesAsignacion;
use App\LogistPanaderiaOrdenOperacionesAsignacionDetalle;
use App\logistpanaderiadistribuidoraalmacen;
use Carbon\Carbon;


trait OrderOfOperationTrais
{
    public function listOrderOfOperation(){       
    $sql_string = "SELECT
    logistpanaderiaordenoperaciones.id,
    logistpanaderiaordenoperaciones.fechainicio,
    logistpanaderiaordenoperaciones.fechafin,
    logistpanaderiaordenoperaciones.codigo,
    logistpanaderiaordenoperacionesasignaresponsables.id_OrdenOperaciones,
    logistpanaderiaordenoperacionesasignaresponsables.id_Responsable,
    logistpanaderiaordenoperacionesresponsables.nombre,
    logistpanaderiaordenoperacionesresponsables.telefono,
    logistpanaderiaordenoperacionesresponsables.institucion
    FROM
    logistpanaderiaordenoperacionesasignaresponsables
    INNER JOIN logistpanaderiaordenoperacionesresponsables ON logistpanaderiaordenoperacionesresponsables.id = logistpanaderiaordenoperacionesasignaresponsables.id_Responsable
    INNER JOIN logistpanaderiaordenoperaciones ON logistpanaderiaordenoperaciones.id = logistpanaderiaordenoperacionesasignaresponsables.id_OrdenOperaciones";
    return DB::select($sql_string);
}

public function ShowOrderOfOperation($data){
    $sql_string = "SELECT
    logistpanaderiaordenoperaciones.id,
    logistpanaderiaordenoperaciones.fechainicio,
    logistpanaderiaordenoperaciones.fechafin,
    logistpanaderiaordenoperaciones.codigo,
    logistpanaderiaordenoperacionesasignaresponsables.id_OrdenOperaciones,
    logistpanaderiaordenoperacionesasignaresponsables.id_Responsable,
    logistpanaderiaordenoperacionesresponsables.nombre,
    logistpanaderiaordenoperacionesresponsables.telefono,
    logistpanaderiaordenoperacionesresponsables.institucion
    FROM
    logistpanaderiaordenoperacionesasignaresponsables
    INNER JOIN logistpanaderiaordenoperacionesresponsables ON logistpanaderiaordenoperacionesresponsables.id = logistpanaderiaordenoperacionesasignaresponsables.id_Responsable
    INNER JOIN logistpanaderiaordenoperaciones ON logistpanaderiaordenoperaciones.id = logistpanaderiaordenoperacionesasignaresponsables.id_OrdenOperaciones
    WHERE
    logistpanaderiaordenoperacionesresponsables.id = " . $data->id_OrdenOperaciones;    
    return DB::select($sql_string);
}

public function AddOrderOfOperation($data){

    $count_op = logistConfig::value('OrdenOperacion') + 1;
    if ((strlen(strval($count_op))) == 1) {$count_op_str = '0'. strval($count_op);}
    if ((strlen(strval($count_op))) == 2) {$count_op_str = '00'. strval($count_op);}
    if ((strlen(strval($count_op))) == 3) {$count_op_str = '000'. strval($count_op);}

    $date = Carbon::now();
    $date = $date->format('Y');
    $cod_op = 'OP-'. $date . '-'. $count_op_str;

    $op = logistpanaderiaordenoperaciones::create([
        'fechainicio' => $data->fechainicio,
        'fechafin' => $data->fechafin,
        'codigo' => $cod_op,
        //'codigo' => 'asef-009',
        'id_OrdenDistribucion' => $data->id_OrdenDistribucion,     
    ]);

    logistConfig::where('id','=','1')->update([
        'OrdenOperacion' =>  $count_op,
    ]);

    return logistpanaderiaordenoperacionesasignaresponsables::create([
        'id_OrdenOperaciones' => $op->id,
        'id_Responsable' => $data->id_responsable,
    ]);
}

public function UpdateResponsableOrderOfOperation($data){
    return logistpanaderiaordenoperacionesasignaresponsables::where('id_OrdenOperaciones','=',$data->id_OrdenOperaciones)
    ->update([
        'id_Responsable' => $data->id_responsable,
    ]);
}

public function ActiveOrderOfOperation($data){
    logistpanaderiaordenoperaciones::where('active', '=',1)->update(['active' => 0]);
    return logistpanaderiaordenoperaciones::where('id', '=',$data->id_OrdenOperaciones)->update(['active' => 1]);
}

public function ListResponsibleOrderofOperations(){
    return logistpanaderiaordenoperacionesresponsables::all();
}

public function DistributionOrderList(){
    return LogistPanaderiaDistribucionOrden::all();
}

public function AsigClientOrderofOperations($data){

    $sql_string = "SELECT
    logistpanaderiacliente.id,
    logistpanaderiacliente.NombrePanaderia,
    logistpanaderiaproductos.nombre,
    logistpanaderiaclienteasignacion.cantidad,
    logistpanaderiacliente.frecuencia,
    logistpanaderiacliente.UltimoDespacho,
    logistpanaderiacliente.suspendido,
    DATEDIFF(CURDATE(), STR_TO_DATE(logistpanaderiacliente.UltimoDespacho,'%d/%m/%Y')) as diastranscurridos
FROM
    logistpanaderiacliente
    INNER JOIN logistpanaderiaclienteasignacion ON logistpanaderiacliente.id = logistpanaderiaclienteasignacion.id_Panaderia
    INNER JOIN logistpanaderiaproductos ON logistpanaderiaclienteasignacion.id_producto = logistpanaderiaproductos.id
WHERE
logistpanaderiacliente.id_distribuidora = " . $data->id_Distribuidora;

    return DB::select($sql_string);
}

public function DiscountExistenceOfTheWherehause($data){

    $date = Carbon::now();
    $date = $date->format('d-m-Y');
    $asignacion = LogistPanaderiaOrdenOperacionesAsignacion::create([
      
        'id_OrdenDeOperaciones' => $data->id_OrdenDeOperaciones,
        'id_panadera' => $data->id_panadera,
        'fechaAsignacion' => $date, //carbobo
        'PesoTN' => ($data->cantidad * 50)/1000,
    ]);

    $ArrayExisencia = logistpanaderiadistribuidoraalmacen::where('existencia','>','0')
    ->where('id_Distribuidora',$data->id_Distribuidora)->orderBy('id', 'asc')->get();

    $techo = $data->cantidad;
    $i = 0;
     while ($techo > 0) {
        $existencia = $ArrayExisencia[$i]->existencia;
        $id = $ArrayExisencia[$i]->id;
        $residuo = $techo - $existencia;
        if($residuo > 0){
            logistpanaderiadistribuidoraalmacen::where('id','=',$id)->update([
                'existencia' => 0,
            ]);

            logistpanaderiaordenoperacionesasignaciondetalle::create([
                'id_OrdenDistribucion' => $ArrayExisencia[$i]->id_OrdenDistribucion,
                'id_Distribuidora' => $ArrayExisencia[$i]->Distribuidora,
                'id_producto' => $data->id_Producto,
                'cantidad' => $ArrayExisencia[$i]->existencia,
                'id_OrdenOperacionesAsignacion' => $asignacion->id,
                'costo' => $ArrayExisencia[$i]->preciocompra,
                'precio' => $ArrayExisencia[$i]->precioventa,
                'id_alamcenDistribucion' => $ArrayExisencia[$i]->id,
            ]);


            $techo = $residuo;
            $i = $i + 1;
        } else {
            $resto = $existencia - $techo;
            $techo = 0;
            logistpanaderiadistribuidoraalmacen::where('id','=',$id)->update([
                'existencia' => $resto,
            ]);

            logistpanaderiaordenoperacionesasignaciondetalle::create([
                'id_OrdenDistribucion' => $ArrayExisencia[$i]->id_OrdenDistribucion,
                'id_Distribuidora' => $ArrayExisencia[$i]->Distribuidora,
                'id_producto' => $data->id_Producto,
                'cantidad' => $techo,
                'id_OrdenOperacionesAsignacion' => $asignacion->id,
                'costo' => $ArrayExisencia[$i]->preciocompra,
                'precio' => $ArrayExisencia[$i]->precioventa,
                'id_alamcenDistribucion' => $ArrayExisencia[$i]->id,
            ]);
        }              
     }
     return 1;
   }

   public function existenciadistribuidora(){

    $sql_string = "SELECT
    logistpanaderiadistribuidoraalmacen.id_Distribuidora,
    logistpanaderiadistribuidoraalmacen.id_producto,
    Sum(logistpanaderiadistribuidoraalmacen.existencia) as existencia
    FROM
    logistpanaderiadistribuidoraalmacen
    WHERE
    logistpanaderiadistribuidoraalmacen.id_Distribuidora = " . $data->id_Distribuidora . "
    GROUP BY
    logistpanaderiadistribuidoraalmacen.id_Distribuidora,
    logistpanaderiadistribuidoraalmacen.id_producto";
    return DB::select($sql_string);
    
   }




// fin del trait
}