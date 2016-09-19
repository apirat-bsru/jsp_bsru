<%@ page import="java.sql.*"%>

<% 
    String db = "evaluation_form";
    String user = "root"; // assumes database name is the same as username
    String pass = "";
    java.sql.Connection con;
    Class.forName("org.gjt.mm.mysql.Driver");
    String jdbcutf8 = "&useUnicode=true&characterEncoding=UTF-8";
     con = DriverManager.getConnection("jdbc:mysql://localhost/"+db, user,pass+"");
   
   
%>
