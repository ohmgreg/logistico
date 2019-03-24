;(function(win){
    $('#aTree').click(function(){
        var ulMenu = $(this).parent().children('ul').get(0)
        $(ulMenu).slideToggle("slow");
    })

    $('.datepicker').on('changeDate', function(ev){
        $(this).datepicker('hide');
    });

    $("#txt_OrdenFechaInicio").change(function(){
        LoadVars.fechainicio = $(this).val();
    });

    $("#txt_OrdenFechaFin").change(function(){
        LoadVars.fechafin = $(this).val();
    });

    $("#cmb-silo").change(function(){
        LoadVars.id_Silo = $(this).val();
        LoadFunctions._ExistenceOfSilo();
    });

    $("#cmb-distribuidora").change(function(){
        LoadVars.id_Distribuidora = $(this).val();
    });

    $("#cmb-OrdenOperacion").change(function(){        
        LoadVars.id_OrdenDistribucion = $(this).val();
    });

    $("#cmb-producto").change(function(){
        LoadVars.id_producto = $(this).val();
    });

    $("#cmb-responsable").change(function(){
        LoadVars.id_responsable = $(this).val();
    });

    $("#txt_DetalleCantidad").change(function(){
        LoadVars.cantidad = $(this).val();
    });

    $("#txt_DetallePrecioCompra").change(function(){
        LoadVars.preciocompra = $(this).val();
    });

    $("#txt_DetallePrecioVenta").change(function(){
        LoadVars.precioventa = $(this).val();
    });

    $("#tableOrdenDistribucion").on("click", "#btn_swOrdenActiva", function(){
        LoadVars.id_OrdenDistrib = $(this)[0].firstChild.id;
        LoadFunctions._ShowConfirm();
    });

    $("#tableOrdenDistribucionDetalle").on("click", "#btn_DetalleDelete", function(){
        LoadVars.id_OrdenDistribucionDelete = $(this)[0].firstChild.id;
        $('#M-Insert-2').css("overflow-y","auto");
        $('#M-Insert-1').modal('show');
    });

    $("#tableOrdenDistribucion").on("click", "#btn_DetalleAdd", function(){
        LoadVars.id_OrdendeOperacion = $(this)[0].firstChild.id;
        LoadFunctions._AsigClientOrderofOperations(LoadVars);
        LoadFunctions._ShowDettalle();
    });

    N("#btnOrdenDistribucionAdd").click(function(){
        if(checkInput(N("#txt_OrdenFechaInicio").val(), "DEBE INGRESAR UNA FECHA DE INICIO.", "danger")){return};
        if(checkInput(N("#txt_OrdenFechaFin").val(), "DEBE INGRESAR UNA FECHA FINAL.", "danger")){return};
        if(checkInput(N("#cmb-OrdenOperacion").val(), "DEBE SELECCIONAR UNA ORDEN DE DISTRIBUCION.", "danger")){return};
        if(checkInput(N("#cmb-responsable").val(), "DEBE SELECCIONAR UN RESPONSABLE.", "danger")){return};
        LoadVars.activo = 0;
        var sw = NewDate(N("#txt_OrdenFechaInicio").val()) <= NewDate(N("#txt_OrdenFechaFin").val());
        sw  ? LoadFunctions._AddOrderOfOperation(LoadVars) :  Notify("LA ORDEN NO PUEDE CULMINAR EN UNA FECHA ANTERIOR A LA DE INICIO.", "danger")
    });

    N("#btnDetalleAdd").click(function(){
        if(checkInput(N("#cmb-silo").val(), "DEBE SELECCIONAR UN SILO.", "danger")){return};
        if(checkInput(N("#cmb-distribuidora").val(), "DEBE SELECCIONAR UNA DISTRIBUIDORA.", "danger")){return};
        if(checkInput(N("#cmb-producto").val(), "DEBE SELECCIONAR UN PRODUCTO.", "danger")){return};
        if(checkInput(N("#txt_DetalleCantidad").val(), "DEBE INGRESAR UNA CANTIDAD.", "danger")){return};
        if(checkInput(N("#txt_DetallePrecioCompra").val(), "DEBE INGRESAR UN PRECIO DE COMPRA.", "danger")){return};
        if(checkInput(N("#txt_DetallePrecioVenta").val(), "DEBE INGRESAR UN PRECIO DE VENTA.", "danger")){return};
        if(checkNum(N("#txt_DetalleCantidad").val(), "LA CANTIDAD DEBE SER UN VALOR NUMERICO.", "danger")){return};
        if(checkNum(N("#txt_DetallePrecioCompra").val(), "EL PRECIO DE COMPRA DEBE SER UN VALOR NUMERICO.", "danger")){return};
        if(checkNum(N("#txt_DetallePrecioVenta").val(), "EL PRECIO DE VENTA DEBE SER UN VALOR NUMERICO.", "danger")){return};
        if(N("#txt_DetalleCantidad").val() > LoadVars.SiloExistencia){Notify("LA CANTIDAD A DISTRIBUIR NO PUEDE EXCEDER A LA EXISTENCIA MANUFACTURADA DEL SILO.", "danger"); return}
        LoadFunctions._AddWarehouseDistributor(LoadVars);
    });

    N("#btnActiveYes").click(function(){
        LoadFunctions._ActivateOrderOfDistribution(LoadVars);
    });

    N("#btnDeleteYes").click(function(){
        LoadFunctions._DelWarehouseDistributor(LoadVars);        
    });

    N("#btnPanaderiaUpdate").click(function(){
        console.log(LoadVars.tablePanaderias.rows().data());
    });

    $('#tableOrdenDistribucionDetalle tbody').on( 'click', '.sw_', function () {
        var fila = $(this).closest('tr').index();
        var InputSelect = $('#tableOrdenDistribucionDetalle tbody').find('tr').eq(fila).find('td').eq(6)[0].childNodes[0];
        var txtAsignacion = $('#tableOrdenDistribucionDetalle tbody').find('tr').eq(fila).find('td').eq(2).text();
        if ($(this).prop('checked')) {
            $(InputSelect).prop('disabled', false);
            $(InputSelect).val(txtAsignacion);
        }else{
            $(InputSelect).prop('disabled', true);
            $(InputSelect).val("");
        }
        console.log(txtAsignacion)
    } );


})(window);