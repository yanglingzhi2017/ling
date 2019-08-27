$(document).ready(function()
    {
        $("#nav li").hover(function()
        {  
        $('ul', this).stop(false,true);
            $('ul', this).slideDown(300);
        },function()
        {
        $('ul', this).stop(false,true);
           $('ul', this).slideUp(300);
        });
    });