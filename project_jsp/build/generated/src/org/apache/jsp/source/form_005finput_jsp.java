package org.apache.jsp.source;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class form_005finput_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(1);
    _jspx_dependants.add("/source/../config/conDB.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
 
    String db = "evaluation_form";
    String user = "root"; // assumes database name is the same as username
    String pass = "";
    java.sql.Connection con;
    Class.forName("org.gjt.mm.mysql.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost/"+db, user,pass);
    
   
   

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>JDB  Connection example</title>\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Kanit\" rel=\"stylesheet\">\n");
      out.write("<link href=\"../lib/css/custom.css\" rel=\"stylesheet\">\n");
      out.write("<script src=\"../lib/js/jquery-3.1.0.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <h1>");
      out.print( session.getAttribute("student_name") );
      out.write("</h1>\n");
      out.write("    <h1>");
      out.print( session.getAttribute("student_code") );
      out.write("</h1>\n");
      out.write("    <h1>");
      out.print( request.getParameter("subjects_code") );
      out.write("</h1>\n");
      out.write("<form action=\"back_end.jsp\" method=\"post\">\n");
      out.write("    <div align=\"center\">\n");
      out.write("        <table border=\"1\">\n");
      out.write("        <colgroup>\n");
      out.write("        <col style=\"width: 500px\">\n");
      out.write("        <col style=\"width: 78px; text-align: center\">\n");
      out.write("        <col style=\"width: 78px; text-align: center\" align=\"center\">\n");
      out.write("        <col style=\"width: 78px; text-align: center\" align=\"center\">\n");
      out.write("        <col style=\"width: 78px; text-align: center\" align=\"center\">\n");
      out.write("        <col style=\"width: 77px; text-align: center\" align=\"center\">\n");
      out.write("        </colgroup>\n");
      out.write("        <tr>\n");
      out.write("            <th rowspan=\"2\">หัวข้อประเมิน</th>\n");
      out.write("            <th colspan=\"5\">ระดับคะแนน</th>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td>5</td>\n");
      out.write("            <td>4</td>\n");
      out.write("            <td>3</td>\n");
      out.write("            <td>2</td>\n");
      out.write("            <td>1</td>\n");
      out.write("        </tr>\n");
      out.write("      \n");
      out.write("        ");

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
            String sql_content="SELECT * FROM `content` WHERE `subject_category_id` ="+topic_subject_category.getInt("id");
            Statement stm_content = con.createStatement();
            ResultSet content_res = stm_content.executeQuery(sql_content);
            while(content_res.next()){
                int topicID=topic_subject_category.getInt("id");
                int contentID= content_res.getRow();
                String content_str=content_res.getString("content");
                int index_name_input=content_res.getInt("idcontent");
                out.println("<tr ><td class='content'>"+"  "+ topicID+"."+contentID+" "+content_str+"</td><td><input type='radio' name='"+index_name_input+"' value='5'></td><td><input type='radio' name='"+index_name_input+"' value='4'></td><td><input type='radio' name='"+index_name_input+"' value='3'></td><td><input type='radio' name='"+index_name_input+"' value='2'></td><td><input type='radio' name='"+index_name_input+"' value='1'></td></tr>");
                
            }
        }


        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </table>\n");
      out.write("    </div>\n");
      out.write("            <input type=\"hidden\" value=\"");
      out.print( count_content );
      out.write("\" name=\"count_\">\n");
      out.write("           <input type=\"hidden\" value=\"");
      out.print( subjects_code );
      out.write("\" name=\"subjects_code\">\n");
      out.write("            <button type=\"submit\">submit</button>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("<script src=\"../lib/js/My_js.js\"></script>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
