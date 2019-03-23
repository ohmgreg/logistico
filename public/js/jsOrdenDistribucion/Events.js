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
    });

    $("#cmb-distribuidora").change(function(){
        LoadVars.id_Distribuidora = $(this).val();
    });

    $("#cmb-producto").change(function(){
        LoadVars.id_producto = $(this).val();
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
        $('#M-Insert-1').modal('show');
    });

    $("#tableOrdenDistribucion").on("click", "#btn_DetalleAdd", function(){
        LoadVars.id_OrdendeDistribucion = $(this)[0].firstChild.id;
        var fila = $(this).closest('tr').index();
        LoadVars.name_OrdenDistrib = $('#tableOrdenDistribucion tbody').find('tr').eq(fila).find('td').eq(0).text();
        LoadFunctions._DetaleDistributionOrder(LoadVars);
        LoadFunctions._ShowDettalle();
    });

    N("#btnOrdenDistribucionAdd").click(function(){
        if(checkInput(N("#txt_OrdenFechaInicio").val(), "DEBE INGRESAR UNA FECHA DE INICIO.", "danger")){return};
        if(checkInput(N("#txt_OrdenFechaFin").val(), "DEBE INGRESAR UNA FECHA FINAL.", "danger")){return};
        LoadVars.activo = 0;
        var sw = NewDate(N("#txt_OrdenFechaInicio").val()) < NewDate(N("#txt_OrdenFechaFin").val());
        sw  ? LoadFunctions._AddDistributionOrder(LoadVars) :  Notify("LA ORDEN NO PUEDE CULMINAR EN UNA FECHA ANTERIOR A LA DE INICIO.", "danger")
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
        LoadFunctions._AddWarehouseDistributor(LoadVars);
    });

    N("#btnActiveYes").click(function(){
        LoadFunctions._ActivateOrderOfDistribution(LoadVars);
    });




})(window);