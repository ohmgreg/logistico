@extends('Modals.M-Insert-1')

@section('content-M1')
    <div class="form-group">
        <label>SACOS DE HARINA (50 Kg):</label>
        <div class="input-group">
            <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
            <input class="form-control input-sm ctrUpdate" id=txt_SiloManufactura type="text" placeholder="INGRESE EL NUMERO DE SACOS MANUCFACTURADOS">
        </div>
    </div>
@endsection

@section('footer-M1')
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
    <button type="button" class="btn btn-primary" id="btnManufacturaAdd">PROCESAR</button>
@endsection