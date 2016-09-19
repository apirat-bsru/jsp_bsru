<%@include file="../config/conDB.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  String count= request.getParameter("count_"); 
            int Count = Integer.parseInt(count);
            String code_student = (String)session.getAttribute("student_code");
            String subjects_code=request.getParameter("subjects_code");
            Statement stm_insert = con.createStatement();
            
         %>
          
     <%
        for(int id_content = 1 ; id_content <= Count ; id_content++) {
            
            String answer_form=request.getParameter(""+id_content+"");
            
            String sql_insert_answer="INSERT INTO `answer_table` (`student_info_student_code`, `content_content_index`, `Answer`, `subjects_info_subjects_code`)";
            sql_insert_answer+=" VALUES ('"+code_student+"','"+id_content+"','"+answer_form+"','"+subjects_code+"')";
            //out.print(sql_insert_answer+"<br>");
            stm_insert.execute(sql_insert_answer);
        }
            
             response.sendRedirect("Choose_subject_form.jsp");
       
     %>
        
       
        <h1></h1>
    </body>
</html>
