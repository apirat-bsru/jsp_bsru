
<%@include file="../config/conDB.jsp" %>
<%@include file="link_sty.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
<link href="../lib/css/custom.css" rel="stylesheet">
<%@page errorPage="error_page.jsp" %>

<% String code_student = (String)session.getAttribute("student_code");
   String student_name = (String)session.getAttribute("student_name");
%>
<%@include file="navber.jsp" %>
<!DOCTYPE html>

<form method="post" action="form_input.jsp">
    <div align="center">
        <table border="0" class="table table-hover">

            <tr><td>รหัสวิชา</td><td>ชื่อวิชา</td><td></td></tr>
            <% 
            try{
                
                // select select_subject
                String sql_select_subject = "SELECT * FROM `subjects_info`";
                Statement stm_sql_select_sub = con.createStatement();
                ResultSet resultSet_sql_select_sub = stm_sql_select_sub.executeQuery(sql_select_subject);
                Statement selece_repeat = con.createStatement();
                // select select_subject 
                // select repeat 
               
                

                while(resultSet_sql_select_sub.next()){
                String subjects_code = resultSet_sql_select_sub.getString("subjects_code");
                String subjects_name_thai = resultSet_sql_select_sub.getString("subjects_name_thai");
                String subjects_name_eng = resultSet_sql_select_sub.getString("subjects_name_eng");
                String sql_select_repeat= "SELECT * FROM `answer_table` WHERE student_info_student_code = "+code_student+" AND subjects_info_subjects_code = "+subjects_code;
                ResultSet row_sql_select_repeat= selece_repeat.executeQuery(sql_select_repeat);
                row_sql_select_repeat.next();
                String repeat = "class='btn btn-info'";
                if(row_sql_select_repeat.getRow()>0){
                   repeat = "disabled data-toggle='tooltip' title='วิชานี้ผ่านการประเมินแล้ว' class='btn'";
                }
                
                String obj_button ="<button type='submit' value='"+subjects_code+"' name='subjects_code' "+repeat+" >ประเมิน</button>";
                out.println("<tr><td>"+subjects_code+"</td><td class='content'>"+subjects_name_thai+"<p><h5>"+subjects_name_eng+"</h5></p></td><td>"+obj_button+"</td></tr>");
                
                row_sql_select_repeat = null;
                }

            }catch(Exception e){
                throw new Exception("e");
            }

            %>
        </table>
    </div>
</form>    
        
        <script>
            $(function () {
            $('[data-toggle="tooltip"]').tooltip();
            });
            
        </script>
