<%-- 
    Document   : show_ans
    Created on : Sep 18, 2016, 12:06:28 PM
    Author     : apirat
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../config/conDB.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        
        <title>JSP Page</title>
    </head>
    <body>
      
        <div align="center" >
            <h3> <% 
            Thread.sleep(500);
            String subject = request.getParameter("subject"); 
            String student = request.getParameter("student"); 
            //out.println(request.getParameter("name_subject"));
            String sql_select_ans ="SELECT `subjects_name_thai` FROM `subjects_info` WHERE `subjects_code`= "+subject;
            String sql_select_name_student="SELECT `student_name` FROM `student_info` WHERE `student_code`= "+student;
            Statement stm_select_subject_name = con.createStatement();
            Statement stm_select_student_name = con.createStatement();
            ResultSet res_subject_name = stm_select_subject_name.executeQuery(sql_select_ans);
            ResultSet res_student_name = stm_select_student_name.executeQuery(sql_select_name_student);
            res_subject_name.next();
            res_student_name.next();
            out.println("ชื่อ:"+res_student_name.getString("student_name")+"    "+"วิชา:"+res_subject_name.getString("subjects_name_thai"));
            //out.println(sql_select_ans);
            %></h3>
 
        <table border="1" class="table table-hover">
        <colgroup>
        <col style="width: 500px">
        <col style="width: 78px; text-align: center">
        <col style="width: 78px; text-align: center" align="center">
        <col style="width: 78px; text-align: center" align="center">
        <col style="width: 78px; text-align: center" align="center">
        <col style="width: 77px; text-align: center" align="center">
        </colgroup>
        <tr>
            <th rowspan="2" class="header">หัวข้อประเมิน</th>
            <th colspan="5" class="header">ระดับคะแนน</th>
        </tr>
        <tr>
            <td>5</td>
            <td>4</td>
            <td>3</td>
            <td>2</td>
            <td>1</td>
        </tr>
      
        <%
        String subjects_code= (String)request.getParameter("subjects_code");
        //select topic
        String sql_subject_category = "SELECT * FROM `subject_category`";
        Statement  stm_subject_category = con.createStatement();
        ResultSet topic_subject_category = stm_subject_category.executeQuery(sql_subject_category);
        //select topic
        //count content
        String sql_count_content = "SELECT count(*) as NUM FROM `content`";
        Statement stm_count = con.createStatement();
        ResultSet res_count = stm_count.executeQuery(sql_count_content);
        res_count.next();
        int count_content = res_count.getInt("NUM");
        //count content
        
        while(topic_subject_category.next()){
            
            out.println("<tr><td class='topic'><strong>"+topic_subject_category.getInt("id")+") "+topic_subject_category.getString("title_name")+"</strong></td><td colspan='5'></td>");
            String sql_content="SELECT subject_category.id,content.content,content.content_index,answer_table.Answer FROM subject_category INNER JOIN content on (subject_category.id = content.subject_category_id) INNER JOIN answer_table ON(content.content_index=answer_table.content_content_index) WHERE answer_table.student_info_student_code ="+student+" and answer_table.subjects_info_subjects_code = "+subject+" and subject_category.id = "+topic_subject_category.getInt("id");
            Statement stm_content = con.createStatement();
            ResultSet content_res = stm_content.executeQuery(sql_content);
            
            
            while(content_res.next()){
                if(content_res.getRow()>0){
                    
                int topicID=topic_subject_category.getInt("id");
                int contentID= content_res.getRow();
                String content_str=content_res.getString("content");
                int index_name_input=content_res.getInt("content_index");
                
                String check5 = "";
                String check4 = "";
                String check3 = "";
                String check2 = "";
                String check1 = "";
                
                if(content_res.getInt("Answer")==5){
                    check5 = "<img src=\"../src/check.png\" style=\"width: 20px; height: 20px;\"/>";
                }else if(content_res.getInt("Answer")==4){
                    check4 = "<img src=\"../src/check.png\" style=\"width: 20px; height: 20px;\"/>";
                }else if(content_res.getInt("Answer")==3){
                    check3 = "<img src=\"../src/check.png\" style=\"width: 20px; height: 20px;\"/>";
                }else if(content_res.getInt("Answer")==2){
                    check2 = "<img src=\"../src/check.png\" style=\"width: 20px; height: 20px;\"/>";
                }else if(content_res.getInt("Answer")==1){
                    check1 = "<img src=\"../src/check.png\" style=\"width: 20px; height: 20px;\"/>";
                }else{System.err.print("<h1>Error</h1>");
                }
                
                
                
                
                //checked=\"checked\"
                out.println("<tr ><td class='content'>"+"  "+ topicID+"."+contentID+" "+content_str+"</td>");
                //choice value5
                out.println("<td>"+check5+"</td>");
                //choice value4
                out.println("<td>"+check4+"</td>");
                //choice value3
                out.println("<td>"+check3+"</td>");
                //choice value2
                out.println("<td>"+check2+"</td>");
                //choice value1
                out.println("<td>"+check1+"</td></tr>");
                
                //out.println("<td>"+content_res.getString("Answer") +"</td></tr>");
               }// if
                else if(content_res.getRow()<=0){
                    out.println("<tr><td>55555</td></tr>"); 
               }else{
                    
               }
            }//loop while 1.1
                
                
        }//loop while 1
        
        %>

       
        </table>
    </div>
        
    </body>
</html>
