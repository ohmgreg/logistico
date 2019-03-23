@extends('Modals.M-Insert')

@section('content_M-Insert')
    <div class="form-group">
        <label>MERMA (Kg):</label>
        <div class="input-group">
            <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
            <input class="form-control input-sm ctrUpdate" type="text" placeholder="INGRESE LAS CANTIDADES EN KILOGRAMOS" id=txt_SiloMerma >
        </div>
    </div>
@endsection

@section('footer_M-Insert')
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
    <button type="button" class="btn btn-primary" id="btnMermaAdd">Asignar Merma</button>
@endsection