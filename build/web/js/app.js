/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function() {
    $('.addtocart').click(function ()
    {
        $.ajax({
            type: "post",
            url: "CartServlet", //this is my servlet
            data: "command=plus&id="+$(this).attr("id"),
            success: function(msg){      
                console.log(msg);
            }
        });
    });

});