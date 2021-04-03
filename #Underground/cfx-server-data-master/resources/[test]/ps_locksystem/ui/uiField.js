$(document).ready(function(){  

    $(".lock").click(function(){
        $.post('http://ps_locksystem/lock', JSON.stringify({
            
        }));
    });

    $(".unlock").click(function(){
        $.post('http://ps_locksystem/unlock', JSON.stringify({
            
        }));
    });

    $(".trunk").click(function(){
        $.post('http://ps_locksystem/trunk', JSON.stringify({
            
        }));
    });

    window.addEventListener('message', function(event) {
        var data = event.data;
        
        if (event.data.type == "enableui") {
            $('body').css('display', event.data.enable ? "block" : "none")
        }
    });

    $(document).keyup(function(e) {
        if (e.key === "Escape") {
          $('body').css('display', 'none');
          $.post('http://ps_locksystem/escape', JSON.stringify({}));
        }
      });
});