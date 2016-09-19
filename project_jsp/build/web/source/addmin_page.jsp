
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="link_sty.jsp" %>
<%@include file="navber.jsp" %>

<!DOCTYPE html>

<html>
    <head>
        
        <title>JSP Page</title>
    </head>
    <body>
         <div id="fade-wrapper"><div class="loader07 center"></div></div>
        <h1 class="show_ajax"></h1>
        <div id="show_table_ans" class="container"></div>       
    </body>
</html>

<script>
    
     $(document).ready(function () {
         $("#add_account").click(function(){
             $('#fade-wrapper').fadeIn();
              $.post("add_account_form.jsp", function (data) {}).done(function (data) {
                    $(".show_ajax").html(data);
                    $("#show_table_ans").hide();
                    $('#fade-wrapper').hide();
                });
         });
         //$(".show_ajax").html("<div class=\"loader11\"></div>");
          $('#fade-wrapper').fadeIn();
         $.post("view_ans.jsp", function (data1) {}).done(function (data1) {
                    $(".show_ajax").html(data1);
                    $('#fade-wrapper').hide();
           });
           
        

    });
    

</script>