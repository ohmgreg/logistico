;(function(win){
    $('#aTree').click(function(){
        var ulMenu = $(this).parent().children('ul').get(0)
        $(ulMenu).slideToggle("slow");
    })

    $("#cmb-distribuidora").change(function(){
        LoadVars.id_Distribuidora = $(this).val();
        LoadFunctions._ListProductsInTransit(LoadVars);
    });

    $("#tableRecepcionMercancia").on("click", "#btn_RecepcionMercancia", function(){
        LoadVars.id_RecepcionActive = $(this)[0].firstChild.id;
        $('#M-Insert').modal('show');
    });

    N("#btnActiveYes").click(function(){
        LoadFunctions._ProductReception(LoadVars);
    });




})(window);