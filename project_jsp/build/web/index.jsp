<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html >
    <head>
        
        <title>Material Design Login Form</title>
        <link rel="stylesheet" href="lib/css/login_sty.css">
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">

    </head>
<% if(session.getAttribute("student_name")==null){ %>
    <body>

        <hgroup>
            <h1>แบบประเมิน ตนเอง</h1>
            <h3>Authentication</h3>
        </hgroup>
        <form method="post" action="source/login.jsp">
            <div class="group">
                <div id="error_num"></div>
                <input type="text" id="name" name="UserName"><span class="highlight"></span><span class="bar"></span>
                <label>StudentCode</label>
            </div>
            <div class="group">
                <input type="password" id="pass" name="PassWord"><span class="highlight"></span><span class="bar"></span>
                <label>Password</label>
            </div>
            <button type="submit" class="button buttonBlue" >Log in
                <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
            </button>
        </form>
       <% }else{response.sendRedirect("/project_jsp/source/Choose_subject_form.jsp");} %>
       
        <script src='lib/js/jquery-3.1.0.min.js'></script>

        <script src="lib/js/log_in_js.js"></script>
        <script>
            $(document).ready(function () {
                $("#name,#pass").keyup(function(){
                    check_input();
                 });
                 $("button").click(function () {
                     check_input();
                 });
                
                
                
                
                function check_input(){
                     var string_name = $("#name").val();
                    var string_pass = $("#pass").val();
                    
                    if(string_name.length ==10 && string_pass.length >=8 ){
                        if($.isNumeric($("#name").val())==true){
                             //alert("pass");
                              $("#name").css("background-color","#81F781");
                              $("#pass").css("background-color","#81F781");
                               $(":submit").attr("disabled", false);
                        }else{
                            $("#name").css("background-color","#F5A9BC");
                             $(":submit").attr("disabled", true);
                        }
                       
                    }else{
                        $("#name").css("background-color","#F5A9BC");
                        $("#pass").css("background-color","#F5A9BC");
                         $(":submit").attr("disabled", true);
                    }
                }
                
                
            });
           
           
           
           
         
            
            
            
        </script>



    </body>
</html>
