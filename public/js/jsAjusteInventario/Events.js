;(function(win){
    $('#aTree').click(function(){
        var ulMenu = $(this).parent().children('ul').get(0)
        $(ulMenu).slideToggle("slow");
    })

    $("#cmb-distribuidora").change(function(){
        LoadVars.id_Distribuidora = $(this).val();
        LoadFunctions._ListProductsInWarehouse(LoadVars);
    });

    $("#tableRecepcionMercancia").on("click", "#btn_AddMerma", function(){
        LoadVars.id_Recepcion = $(this)[0].firstChild.id;
        $('#M-Insert').modal('show');
    });

    N("#btnActiveYes").click(function(){
        LoadFunctions._ProductReception(LoadVars);
    });
    
    N("#btnMermaAdd").click(function(){
        if(checkInput(N("#txt_SiloMerma").val(), "DEBE INGRESAR UNA MERMA.", "danger")){return};
        if(checkNum(N("#txt_SiloMerma").val(), "LA CANTIDAD DEBE SER UN VALOR NUMERICO.", "danger")){return};
        LoadVars.merma <= LoadVars.cantidad ? LoadFunctions._updateMerma(LoadVars) : Notify("LA MERMA NO DEBE SER MAYOR QUE LA CANTIDAD RECARGADA.", "danger");        
    });



})(window);