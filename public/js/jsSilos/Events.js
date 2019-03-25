;(function(win){

    $('#aTree').click(function(){
        var ulMenu = $(this).parent().children('ul').get(0)
        $(ulMenu).slideToggle("slow");
    })

    $('.datepicker').on('changeDate', function(ev){
        $(this).datepicker('hide');
    });

    $("#tableSilosRecarga").on("click", "#btn_merma", function(){
        LoadVars.id_incorporacion = $(this)[0].firstChild.id;
        LoadFunctions._ShowMerma(LoadVars)
    });

    $("#tableSilosRecarga").on("click", "#btn_manufactura", function(){
        LoadVars.id_incorporacion = $(this)[0].firstChild.id;
        var fila = $(this).closest('tr').index();
        LoadVars.cantidad = $('#tableSilosRecarga tbody').find('tr').eq(fila).find('td').eq(4).text() * 1000;
        LoadFunctions._ShowManufactura(LoadVars)
    });

    N("#btnMermaAdd").click(function(){
        if(checkInput(N("#txt_SiloMerma").val(), "DEBE INGRESAR UNA MERMA.", "danger")){return};
        if(checkNum(N("#txt_SiloMerma").val(), "LA CANTIDAD DEBE SER UN VALOR NUMERICO.", "danger")){return};
        LoadVars.merma <= LoadVars.cantidad ? LoadFunctions._updateMerma(LoadVars) : Notify("LA MERMA NO DEBE SER MAYOR QUE LA CANTIDAD RECARGADA.", "danger");        
    });

    N("#btnManufacturaAdd").click(function(){
        if(checkInput(N("#txt_SiloManufactura").val(), "DEBE INGRESAR UNA CANTIDAD MANUFACTURADA.", "danger")){return};
        if(checkNum(N("#txt_SiloManufactura").val(), "LA CANTIDAD DEBE SER UN VALOR NUMERICO.", "danger")){return};
        LoadVars.manufactura <=  Math.round(LoadVars.cantidad / 50) ? LoadFunctions._updateManufactura(LoadVars) : Notify("EL NUMERO DE SACOS SUPERA LA CANTIDAD ASIGNADA.", "danger");        
    });

    N("#btnSilosReload").click(function(){
		if(checkInput(N("#cmb-silo").val(), "DEBE SELECCIONAR UN SILO.", "danger")){return};
		if(checkInput(N("#cmb-producto").val(), "DEBE SELECCIONAR UN PRODUCTO.", "danger")){return};
        if(checkInput(N("#txt_SiloCantidadRecarga").val(), "DEBE INGRESAR UNA CANTIDAD.", "danger")){return};
        if(checkNum(N("#txt_SiloCantidadRecarga").val(), "LA CANTIDAD DEBE SER UN VALOR NUMERICO.", "danger")){return};        
        if(checkInput(N("#txt_SiloFechaRecarga").val(), "DEBE INGRESAR UNA FECHA.", "danger")){return};
        LoadFunctions._AddProductSilo(LoadVars);
    });

    $("#cmb-silo").change(function(){
        LoadVars.id_Silo = $(this).val();
        LoadFunctions._listSiloRecarga(LoadVars);
    });

    $("#cmb-producto").change(function(){
        LoadVars.id_producto = $(this).val();
    });

    $("#txt_SiloCantidadRecarga").change(function(){
        LoadVars.cantidad = $(this).val() * 1000;
    });

    $("#txt_SiloFechaRecarga").change(function(){
        LoadVars.fecha = $(this).val();
    });

    $("#txt_SiloObservacion").change(function(){
        LoadVars.nota = $(this).val();
    });

    $("#txt_SiloMerma").change(function(){
        LoadVars.merma = $(this).val();
    });

    $("#txt_SiloManufactura").change(function(){
        LoadVars.manufactura = $(this).val();
    });




})(window);