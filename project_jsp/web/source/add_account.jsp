<%-- 
    Document   : add_account
    Created on : Sep 12, 2016, 2:23:03 AM
    Author     : ikool009
--%>


<%@include file="../config/conDB.jsp" %>
<% request.setCharacterEncoding("UTF-8");
   response.setContentType("text/html;charset=UTF-8");
%>

<%
 String student_code = request.getParameter("student_code");
 String pass_user = request.getParameter("password");
 String Full_name = request.getParameter("Full_name");
 //String thainame = new String(Full_name.getBytes("ISO8859_1"),"UTF-8");
 Statement stm_insert_account = con.createStatement();
 String sql_commane_insert="INSERT INTO `student_info` (`student_code`, `student_pass`, `student_name`, `type`) VALUES ('"+student_code+"', '"+pass_user+"', '"+Full_name+"', '0')";
 try{
      //out.print(sql_commane_insert);
 stm_insert_account.execute(sql_commane_insert);
 response.sendRedirect("addmin_page.jsp");
 }catch(Exception e){
     out.print(e.getMessage()); 
 }

 %>
