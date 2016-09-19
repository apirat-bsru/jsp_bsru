<%-- 
    Document   : view_ans
    Created on : Sep 13, 2016, 1:03:10 AM
    Author     : ikool009
--%>
<% Thread.sleep(500); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../config/conDB.jsp" %>

<!DOCTYPE html>
<% 
    //Thread.sleep(1500);
   String sql_select_studen_code = "SELECT student_info.student_code FROM `student_info` WHERE type <>1";
   Statement  stm_student_code = con.createStatement();
   ResultSet res_student_code = stm_student_code.executeQuery(sql_select_studen_code);

   String sql_select_subject="SELECT `subjects_code`,`subjects_name_thai` FROM `subjects_info`";
   Statement stm_subject = con.createStatement();
   ResultSet res_subject = stm_subject.executeQuery(sql_select_subject);
   
%>
 <div align="center">
     <form id="box_data" method="post">
        <table border="0">
            <tr>
                <td>
                    รหัสนักศึกษา
                </td>
                <td>
                    <select class="form-control" id="select_stdent_code" name="student">

                        <% while (res_student_code.next()) {
                                String stu_code = res_student_code.getString("student_code");
                                out.println("<option value='" + stu_code + "' >" + stu_code + "</option>");
                            }
                        %>
                    </select>
                </td>
                <td>
                    ชื่อวิชา
                </td>
                 <td>
                     <select class="form-control" id="select_stdent_code" name="subject">
                            <% while (res_subject.next()) {
                                String subject_code = res_subject.getString("subjects_code");
                                String name_thai=res_subject.getString("subjects_name_thai");
                                out.println("<option value='" + subject_code + "' title='"+name_thai+"'>" + subject_code + "</option>");
                                
                            }
                        %>

                    </select>
                       
                </td>
                <td><button class="btn btn-info" id="submit_ans" type="button">ค้นหา</button></td>
            </tr>
            <div id="fade-wrapper"><div class="loader04 center"></div></div>
        </table>
                        
     </form>                     
 </div>

                
                    
                
                
                
                
<script>
    
    
       
        $("#submit_ans").click(function(){
                //$("#show_table_ans").html("<div id=\"fade-wrapper\"></div>");
                $('#fade-wrapper').fadeIn();
                //$("#show_table_ans").html("<div class=\"loader12 center\"></div>");
                $.post("show_ans.jsp",$("#box_data").serializeArray()).done(function (data2) {
                    $("#show_table_ans").html(data2);
                    $('#fade-wrapper').fadeOut();
                });


        });   
        
        

 
    

</script>



