;(function(win){
    $('#aTree').click(function(){
        var ulMenu = $(this).parent().children('ul').get(0)
        $(ulMenu).slideToggle("slow");
    })

    $('.datepicker').on('changeDate', function(ev){
        $(this).datepicker('hide');
    });
})(window);