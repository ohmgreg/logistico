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
use App\logistpanaderiaordenoperacionesintegrador;
use App\logistpanaderiaOrdenOperacionTemp;
use Carbon\Carbon;


trait OrderOfOperationTrais
{


    //Temp Orden Operaciones;
public function addoptempCreate($data){
    $data = (object) $data;
    $algo = logistpanaderiaOrdenOperacionTemp::create([
        'Cantidad' => $data->Cantidad,
        'id_Producto' => $data->id_Producto,
        'id_Panaderia' => $data->id_Panaderia,
        'id_OrdenOperaciones' => $data->id_OrdenOperaciones,
        'id_distribuidora' => $data->id_Distribuidora,
        'id_asociado' => $data->id_Asociado 
    ]);
    return 1;
}

public function deloptemp($data){

    return logistpanaderiaOrdenOperacionTemp::where('id_OrdenOperaciones','=',$data->id_OrdendeOperacion)
    ->delete();
}





    // Fin de la Orden







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
    // $sql_string = "SELECT
    // logistpanaderiaordenoperaciones.id,
    // logistpanaderiaordenoperaciones.fechainicio,
    // logistpanaderiaordenoperaciones.fechafin,
    // logistpanaderiaordenoperaciones.codigo,
    // logistpanaderiaordenoperacionesasignaresponsables.id_OrdenOperaciones,
    // logistpanaderiaordenoperacionesasignaresponsables.id_Responsable,
    // logistpanaderiaordenoperacionesresponsables.nombre,
    // logistpanaderiaordenoperacionesresponsables.telefono,
    // logistpanaderiaordenoperacionesresponsables.institucion
    // FROM
    // logistpanaderiaordenoperacionesasignaresponsables
    // INNER JOIN logistpanaderiaordenoperacionesresponsables ON logistpanaderiaordenoperacionesresponsables.id = logistpanaderiaordenoperacionesasignaresponsables.id_Responsable
    // INNER JOIN logistpanaderiaordenoperaciones ON logistpanaderiaordenoperaciones.id = logistpanaderiaordenoperacionesasignaresponsables.id_OrdenOperaciones
    // WHERE
    // logistpanaderiaordenoperacionesresponsables.id = " . $data->id_OrdenOperaciones;    
    // return DB::select($sql_string);

    $sql_string = "SELECT
    logistpanaderiacliente.NombrePanaderia,
    logistpanaderiaproductos.nombre,
    logistpanaderiaclienteasignacion.cantidad,
    logistpanaderiacliente.frecuencia,
    logistpanaderiacliente.UltimoDespacho,
    logistpanaderiacliente.suspendido,
    DATEDIFF(CURDATE(), STR_TO_DATE(logistpanaderiacliente.UltimoDespacho,'%d/%m/%Y')) AS diastranscurridos,
    logistpanaderiaclienteasignacion.id AS id_asociado,
    logistpanaderiacliente.id AS idpanaderiagreg,
    logistpanaderiaclienteasignacion.id_producto AS idproductogreg,
    logistpanaderiaordenoperaciontemp.id AS id_tmp
    FROM
    logistpanaderiacliente
    INNER JOIN logistpanaderiaclienteasignacion ON logistpanaderiacliente.id = logistpanaderiaclienteasignacion.id_Panaderia
    INNER JOIN logistpanaderiaproductos ON logistpanaderiaclienteasignacion.id_producto = logistpanaderiaproductos.id
    LEFT JOIN logistpanaderiaordenoperaciontemp ON logistpanaderiaordenoperaciontemp.id_asociado = logistpanaderiaclienteasignacion.id
    WHERE
            logistpanaderiacliente.id_distribuidora = " . $data->id_OrdenOperaciones . "
    GROUP BY
    logistpanaderiacliente.id";
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

    $sql_string = "SELECT DISTINCT
    logistpanaderiacliente.NombrePanaderia,
    logistpanaderiaproductos.nombre,
    logistpanaderiaclienteasignacion.cantidad,
    logistpanaderiacliente.frecuencia,
    logistpanaderiacliente.UltimoDespacho,
    logistpanaderiacliente.suspendido,
    DATEDIFF(CURDATE(), STR_TO_DATE(logistpanaderiacliente.UltimoDespacho,'%d/%m/%Y')) AS diastranscurridos,
    logistpanaderiaclienteasignacion.id AS id_asociado,
    logistpanaderiacliente.id AS idpanaderiagreg,
    logistpanaderiaclienteasignacion.id_producto AS idproductogreg,
    logistpanaderiaordenoperaciontemp.id AS id_tmp
    FROM
    logistpanaderiacliente
    INNER JOIN logistpanaderiaclienteasignacion ON logistpanaderiacliente.id = logistpanaderiaclienteasignacion.id_Panaderia
    INNER JOIN logistpanaderiaproductos ON logistpanaderiaclienteasignacion.id_producto = logistpanaderiaproductos.id
    LEFT JOIN logistpanaderiaordenoperaciontemp ON logistpanaderiaordenoperaciontemp.id_asociado = logistpanaderiaclienteasignacion.id
    WHERE
            logistpanaderiacliente.id_distribuidora = " . $data->id_Distribuidora;
    return DB::select($sql_string);
}

public function DiscountExistenceOfTheWherehause($data){
    $data = (object) $data;
    $date = Carbon::now();
    $date = $date->format('d-m-Y');

     $asignacion = LogistPanaderiaOrdenOperacionesAsignacion::create([
        'id_OrdenDeOperaciones' => $data->id_OrdenOperaciones,
        'id_panadera' => $data->id_Panaderia,
        'fechaAsignacion' => $date, //carbobo
        'pesoTN' => ($data->cantidad * 50)/1000,
    ]);


    logistpanaderiaordenoperacionesintegrador::create([
        'id_OrdenOperacionesAsignacion' => $asignacion->id,
        'id_ClienteAsignacion' => $data->id_Asociado,
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
                'id_OrdenDistribucion' => $ArrayExisencia[$i]->id_OrdendeDistribucion,
                'id_Distribuidora' => $ArrayExisencia[$i]->id_Distribuidora,
                'id_producto' => $data->id_Producto,
                'cantidad' => ord($data->cantidad),
                'id_OrdenOperacionesAsignacion' => $asignacion->id,
                'costo' => $ArrayExisencia[$i]->preciocompra,
                'precio' => $ArrayExisencia[$i]->precioventa,
                'id_alamcenDistribucion' => $ArrayExisencia[$i]->id,
                'id_panaderia'=>$data->id_Panaderia,
                'id_OrdendeOperaciones'=>$data->id_OrdenOperaciones,

            ]);


            $techo = $residuo;
            $i = $i + 1;
        } else {
            $resto = $existencia - $techo;
            
            logistpanaderiadistribuidoraalmacen::where('id','=',$id)->update([
                'existencia' => $resto,
            ]);

            logistpanaderiaordenoperacionesasignaciondetalle::create([
                'id_OrdenDistribucion' => $ArrayExisencia[$i]->id_OrdendeDistribucion,
                'id_Distribuidora' => $ArrayExisencia[$i]->id_Distribuidora,
                'id_producto' => $data->id_Producto,
                'cantidad' => $techo,
                'id_OrdenOperacionesAsignacion' => $asignacion->id,
                'costo' => $ArrayExisencia[$i]->preciocompra,
                'precio' => $ArrayExisencia[$i]->precioventa,
                'id_alamcenDistribucion' => $ArrayExisencia[$i]->id,
                'id_panaderia'=>$data->id_Panaderia,
                'id_OrdendeOperaciones'=>$data->id_OrdenOperaciones,
            ]);
            $techo = 0;
        }              
     }
     return 1;
   }

   public function existenciadistribuidora($data){
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