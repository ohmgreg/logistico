;(function(win){
    var swCountCell;

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
        LoadFunctions._existenciadistribuidora(LoadVars);   
        LoadFunctions._AsigClientOrderofOperations(LoadVars);
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
        LoadFunctions._listDistribuidora("cmb-distribuidora");
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



    $('#tableOrdenDistribucionDetalle tbody').on( 'click', '.sw_', function () {
        var fila = $(this).closest('tr').index();
        var InputSelect = $('#tableOrdenDistribucionDetalle tbody').find('tr').eq(fila).find('td').eq(7)[0].childNodes[0];
        var txtAsignacion = $('#tableOrdenDistribucionDetalle tbody').find('tr').eq(fila).find('td').eq(3).text();
        if ($(this).prop('checked')) {
            $(InputSelect).prop('disabled', false);
            $(InputSelect).val(txtAsignacion);
        }else{
            $(InputSelect).prop('disabled', true);
            $(InputSelect).val("");
            $($(this).closest('tr')[0]).css("background-color","white");
            $($(this).closest('tr')[0]).css("color","black");
        }
    } );

    N("#btnPanaderiaUpdate").click(function(){
        LoadFunctions._existenciadistribuidora(LoadVars);        
    });

    $("#tableOrdenDistribucionDetalle").on("keyup", ".ctrUpdate1", function(){
        var fila = $(this).closest('tr').index();
        LoadVars.id_TablePanaderia = parseInt($('#tableOrdenDistribucionDetalle tbody').find('tr').eq(fila).find('td').eq(7)[0].firstChild.id.replace("txt_", ""), 10) + 1;
        LoadVars.InputPanaderiaCantidad = $('#tableOrdenDistribucionDetalle tbody').find('tr').eq(fila).find('td').eq(7)[0].firstChild.value;
        LoadVars.InputPanaderiaAsignada = parseInt($('#tableOrdenDistribucionDetalle tbody').find('tr').eq(fila).find('td').eq(3).text(), 10);

        LoadVars.ArrayPanaderia[LoadVars.id_TablePanaderia] = {
            id_Producto: LoadVars.id_producto, 
            id_Distribuidora: LoadVars.id_Distribuidora, 
            id_OrdenOperaciones: LoadVars.id_OrdendeOperacion, 
            id_Panaderia: LoadVars.id_TablePanaderia, 
            val: LoadVars.InputPanaderiaCantidad
        }; 

        if(LoadVars.InputPanaderiaCantidad !== ""){
            swCountCell = checkInt(LoadVars.InputPanaderiaCantidad, LoadVars.id_TablePanaderia, this);
        }
        if(LoadVars.InputPanaderiaAsignada < LoadVars.InputPanaderiaCantidad){
            Notify("LA CANTIDAD SOLICITADA NO PUEDE SER MAYOR QUE LA ASIGNADA", "danger");
            $($(this)[0]).val(LoadVars.InputPanaderiaAsignada);
            LoadVars.ArrayPanaderia[LoadVars.id_TablePanaderia] = {id_OrdenOperaciones: LoadVars.id_OrdendeOperacion, id_Panaderia: LoadVars.id_TablePanaderia, val: LoadVars.InputPanaderiaAsignada}; 
        }
        var a = 0;
        LoadVars.ArrayPanaderia.forEach(function(element, index){
            if(element.val !== ""){
                a += /^([0-9]{1,6})$/.test(element.val) ? parseInt(element.val, 10) : 0
            }
        });
        LoadVars.existenciaAux = LoadVars.existencia - a;
        $("#panaderiaCantidad p")[0].innerText = "CANTIDAD EN EXISTENCIA: " + LoadVars.existenciaAux + " SACOS";
        if(LoadVars.existenciaAux < 0){            
            $($("#panaderiaCantidad p")[0]).css("color","red");
        }else{
            $($("#panaderiaCantidad p")[0]).css("color","green");
        }
    });

    $("#tableOrdenDistribucionDetalle").on("click", ".sw_", function(){
        var fila = $(this).closest('tr').index();
        LoadVars.id_TablePanaderia = parseInt($('#tableOrdenDistribucionDetalle tbody').find('tr').eq(fila).find('td').eq(7)[0].firstChild.id.replace("txt_", ""), 10) + 1;
        LoadVars.InputPanaderiaCantidad = $('#tableOrdenDistribucionDetalle tbody').find('tr').eq(fila).find('td').eq(7)[0].firstChild.value;
        LoadVars.ArrayPanaderia[LoadVars.id_TablePanaderia] = {
            id_Producto: LoadVars.id_producto, 
            id_Distribuidora: LoadVars.id_Distribuidora, 
            id_OrdenOperaciones: LoadVars.id_OrdendeOperacion, 
            id_Panaderia: LoadVars.id_TablePanaderia, 
            val: LoadVars.InputPanaderiaCantidad
        }; 
        var a = 0;
        LoadVars.ArrayPanaderia.forEach(function(element){
            if(element.val !== ""){
                a += parseInt(element.val, 10);
            }
        }); 
        LoadVars.existenciaAux = LoadVars.existencia - a;
        $("#panaderiaCantidad p")[0].innerText = "CANTIDAD EN EXISTENCIA: " + LoadVars.existenciaAux + " SACOS";
        if(LoadVars.existenciaAux < 0){            
            $($("#panaderiaCantidad p")[0]).css("color","red");
        }else{
            $($("#panaderiaCantidad p")[0]).css("color","green");
        }
    });

    N("#btnPanaderiaUpdate").click(function(){
        if(LoadVars.existenciaAux < 0){            
            Notify("LA CANTIDAD SOLICITADA ES MAYOR QUE LA EXISTENCIA EN ALMACEN", "danger")
        }else{
            LoadVars.ArrayPanaderiaDef = [];
            LoadVars.ArrayPanaderia.forEach(function(element){
                if(element.val !== ""){
                    element.id_OrdenOperaciones = parseInt(element.id_OrdenOperaciones, 10);
                    element.cantidad = parseInt(element.val, 10);
                    LoadVars.ArrayPanaderiaDef.push(element);
                }
            }); 
        }
        LoadFunctions._DiscountExistenceOfTheWherehause();
    });


})(window);
