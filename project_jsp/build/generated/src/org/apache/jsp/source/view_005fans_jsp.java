package org.apache.jsp.source;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class view_005fans_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(2);
    _jspx_dependants.add("/source/../config/conDB.jsp");
    _jspx_dependants.add("/source/../source/link_sty.jsp");
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
      out.write('\n');
 
    String db = "evaluation_form";
    String user = "root"; // assumes database name is the same as username
    String pass = "";
    java.sql.Connection con;
    Class.forName("org.gjt.mm.mysql.Driver");
    String jdbcutf8 = "&useUnicode=true&characterEncoding=UTF-8";
     con = DriverManager.getConnection("jdbc:mysql://localhost/"+db, user,pass+"");
   
   

      out.write('\n');
      out.write('\n');
      out.write("<link rel=\"stylesheet\" href=\"../lib/bootstrap-3.3.7-dist/css/bootstrap.css\">\n");
      out.write("<script type=\"text/javascript\" src=\"../lib/js/jquery-3.1.0.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"../lib/bootstrap-3.3.7-dist/js/bootstrap.min.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"../lib/css/custom.css\">");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<div class=\"row\">\n");
      out.write("    <div class=\"content\">\n");
      out.write("        <div class=\"col-md-12 barMenu\"></div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
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
