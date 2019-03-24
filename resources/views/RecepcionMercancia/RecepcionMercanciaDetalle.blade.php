@extends('Modals.M-Insert-2')
@section('content-M2')
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading" id="HeadingId">ORDEN DE DISTRIBUCION</div>
            <div class="modal-body">
                <form action="" id="FormOrdenDetalle">
                    <div><label>SELECCIONE UN SILO</label><select id='cmb-silo' class="form-control"><option value="" disabled selected>SELECCIONE UN OPCIÓN</option></select></div>
                    <div><label>SELECCIONE UNA DISTRIBUIDORA</label><select id='cmb-distribuidora' class="form-control"><option value="" disabled selected>SELECCIONE UN OPCIÓN</option></select></div>
                    <div><label>SELECCIONE UN PRODUCTO</label><select id='cmb-producto' class="form-control"><option value="" disabled selected>SELECCIONE UN OPCIÓN</option></select></div>         
                    <div class="form-group">
                        <label>CANTIDAD:</label>
                        <div class="input-group">
                            <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                            <input class="form-control input-sm ctrUpdate" type="text" pattern="[1-9]" placeholder="INGRESE LAS CANTIDADES EN SACOS" id=txt_DetalleCantidad >
                        </div>
                    </div>
                    <div class="form-group">
                        <label>PRECIO DE COMPRA:</label>
                        <div class="input-group">
                            <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                            <input class="form-control input-sm ctrUpdate" type="text" pattern="[1-9]" placeholder="" id=txt_DetallePrecioCompra >
                        </div>
                    </div>
                    <div class="form-group">
                        <label>PRECIO DE VENTA:</label>
                        <div class="input-group">
                            <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                            <input class="form-control input-sm ctrUpdate" type="text" pattern="[1-9]" placeholder="" id=txt_DetallePrecioVenta >
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="btnDetalleAdd">CREAR DETALLE</button>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12 col-md-offset-0">
        <div class="panel panel-default">
            <div class="panel-heading">DISTIBUIDORAS ASOCIADAS</div>
            <div class="panel-body">
                <table id="tableOrdenDistribucionDetalle" class="table" cellspacing="0">
                    <thead>
                        <tr>
                            <th>DISTRIBUIDORA</th>
                            <th>PRODUCTO</th>
                            <th>CANTIDAD (SACOS)</th>
                            <th>ESTATUS</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>DISTRIBUIDORA</th>
                            <th>PRODUCTO</th>
                            <th>CANTIDAD (SACOS)</th>
                            <th>ESTATUS</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
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