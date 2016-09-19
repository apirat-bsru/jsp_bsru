

<%@include file="../config/conDB.jsp" %>
<%@page errorPage="error_page.jsp" %>
        <% 
           try{
              
            String UserName = request.getParameter("UserName");
            String PassWord= request.getParameter("PassWord");
            
             String sql_select_user = "SELECT student_code,student_name,type FROM student_info WHERE student_code = '"+UserName+"' and student_pass ='"+PassWord+"'";
             Statement stm_select_user = con.createStatement();
             ResultSet result_sql = stm_select_user.executeQuery(sql_select_user);
             result_sql.next();
             int Search_accounts = result_sql.getRow();
            
             if(Search_accounts>0){
                 //out.println("Login pass");
                 String student_code = result_sql.getString("student_code");
                 String student_name = result_sql.getString("student_name");
                 int type = result_sql.getInt("type");
                 session.setAttribute( "student_code", student_code );
                 session.setAttribute( "student_name", student_name );
                 
                 if(type==0){
                  session.setAttribute( "type", type );
                  response.sendRedirect("Choose_subject_form.jsp");
                 }else if(type==1){
                  session.setAttribute( "type", type );
                  response.sendRedirect("addmin_page.jsp");
                 
                 }else{
                     throw new Exception("e");
                 }
              
             }else{
                 response.sendRedirect("../index.jsp");
             }
           }catch(Exception e){
               throw new Exception("e");
           }
        %>
