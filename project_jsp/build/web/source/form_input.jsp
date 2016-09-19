<%@include file="../config/conDB.jsp" %>
<%@include file="link_sty.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>แบบประเมิน</title>
<link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
<link href="../lib/css/custom.css" rel="stylesheet">
<% String subjects_code= (String)request.getParameter("subjects_code");%>
</head>

<body>
    <%@include file="navber.jsp" %>

 <%  String sql_name_subject = "SELECT * FROM `subjects_info` WHERE `subjects_code` = "+subjects_code; 
     Statement stm_name_subject= con.createStatement();
     ResultSet res_name_subject= stm_name_subject.executeQuery(sql_name_subject);
     res_name_subject.next();
     String subject_name= res_name_subject.getString("subjects_name_thai");
     
 %>   
   <h3 style="text-align: center"><% out.println("หัวข้อการประเมินตนเองในรายวิชา : "+subject_name); %></h3>
 <div class="container">
    
 <form action="back_end.jsp" method="post">
    
     <div align="center" >
        
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
            String sql_content="SELECT * FROM `content` WHERE `subject_category_id` ="+topic_subject_category.getInt("id");
            Statement stm_content = con.createStatement();
            ResultSet content_res = stm_content.executeQuery(sql_content);
            while(content_res.next()){
                int topicID=topic_subject_category.getInt("id");
                int contentID= content_res.getRow();
                String content_str=content_res.getString("content");
                int index_name_input=content_res.getInt("content_index");
                out.println("<tr ><td class='content'>"+"  "+ topicID+"."+contentID+" "+content_str+"</td>");
                out.println("<td><input type='radio' name='"+index_name_input+"' value='5'></td>");
                out.println("<td><input type='radio' name='"+index_name_input+"' value='4'></td>");
                out.println("<td><input type='radio' name='"+index_name_input+"' value='3'></td>");
                out.println("<td><input type='radio' name='"+index_name_input+"' value='2'></td>");
                out.println("<td><input type='radio' name='"+index_name_input+"' value='1'></td></tr>");
            }
            stm_content=null;
            content_res=null;
            
        }
        topic_subject_category=null;

        %>


        </table>
    </div>
            <input type="hidden" value="<%= count_content %>" name="count_">
           <input type="hidden" value="<%= subjects_code %>" name="subjects_code">
           
           <div align="center" style="margin-top: 10px"><button type="submit" class="btn btn-info">บันทึก</button>&nbsp;<input class="btn btn-warning" type="button" value="กลับ" onclick="window.history.back()" /> </div>
</form>
 </div>

</body>
<script src="../lib/js/My_js.js"></script>
</html>