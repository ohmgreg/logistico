@extends('Modals.M-Insert-2')
@section('content-M2')
<div class="row">
    <div class="col-md-12 col-md-offset-0">
        <div class="panel panel-default">
            <div class="panel-heading" id="HeadingId">ASIGNACION DE DESPACHO</div>
            <div class="modal-body">
                <div><label>BANCO:</label><select id='cmb-banco' name="id_Banco" class="form-control"></select></div>
                <div class="form-group">
                    <label>NRO DE DEPOSITO:</label>
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                        <input class="form-control input-sm ctrUpdate" type="text" pattern="[1-9]" placeholder="INGRESE LAS CANTIDADES EN SACOS" id=txt_DetalleCantidad >
                    </div>
                </div>
                <div class="form-group">
                    <label>MONTO:</label>
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                        <input class="form-control input-sm ctrUpdate" type="text" pattern="[1-9]" placeholder="INGRESE LAS CANTIDADES EN SACOS" id=txt_DetalleCantidad >
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
        <div class="col-md-12 col-md-offset-0">
            <div class="panel panel-default">
                <div class="panel-heading">DISPONIBILIDAD</div>
                <div class="panel-body">
                    <div id="panaderiaCantidad"><p></p></div>
                    <table id="tableOrdenDistribucionDetalle" class="table" cellspacing="0">
                        <thead>
                            <tr>
                                <th>LUNES</th>
                                <th>MARTES</th>
                                <th>MIERCOLES</th>
                                <th>JUEVES</th>
                                <th>VIERNES</th>
                                <th>SABADO</th>
                                <th>DOMINGO</th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                        <tfoot>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('footer-M2')
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
@endsection