$(document).ready(function()
{
    
    var user_type = $('#user_type').val();
   // alert(user_type);
    if (user_type == 1)
    {
        $("div#admin").show();
        $("div#default").hide();
        $("#delete").show();
        $("#add_cart").hide();
    }
    else if (user_type == 2)
    {
        $("div#customer").show();
        $("div#default").hide();
        $("#delete").hide();

    }
    else if (user_type == 3)
    {
        $("div#business").show();
        $("div#default").hide();
        $("#delete").hide();
    }
    $("ul").on("click", function () {
        
        if (user_type == 1) {
            $("div#admin").show();
            $("div#default").hide();
        }
        else if (user_type == 2) {
            $("div#customer").show();
            $("div#default").hide();
        }
        else if (user_type == 3) {
            $("div#business").show();
            $("div#default").hide();
        }
    });
});