package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

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

      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html >\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("        <title>Material Design Login Form</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"lib/css/login_sty.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Kanit\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <hgroup>\n");
      out.write("            <h1>แบบประเมิน ตนเอง</h1>\n");
      out.write("            <h3>Authentication</h3>\n");
      out.write("        </hgroup>\n");
      out.write("        <form method=\"post\" action=\"source/login.jsp\">\n");
      out.write("            <div class=\"group\">\n");
      out.write("                <div id=\"error_num\"></div>\n");
      out.write("                <input type=\"text\" id=\"name\" name=\"UserName\"><span class=\"highlight\"></span><span class=\"bar\"></span>\n");
      out.write("                <label>StudentCode</label>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"group\">\n");
      out.write("                <input type=\"password\" id=\"pass\" name=\"PassWord\"><span class=\"highlight\"></span><span class=\"bar\"></span>\n");
      out.write("                <label>Password</label>\n");
      out.write("            </div>\n");
      out.write("            <button type=\"submit\" class=\"button buttonBlue\" >Subscribe\n");
      out.write("                <div class=\"ripples buttonRipples\"><span class=\"ripplesCircle\"></span></div>\n");
      out.write("            </button>\n");
      out.write("        </form>\n");
      out.write("       \n");
      out.write("        <script src='lib/js/jquery-3.1.0.min.js'></script>\n");
      out.write("\n");
      out.write("        <script src=\"lib/js/log_in_js.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $(\"#name,#pass\").keyup(function(){\n");
      out.write("                    check_input();\n");
      out.write("                 });\n");
      out.write("                 $(\"button\").click(function () {\n");
      out.write("                     check_input();\n");
      out.write("                 });\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                function check_input(){\n");
      out.write("                     var string_name = $(\"#name\").val();\n");
      out.write("                    var string_pass = $(\"#pass\").val();\n");
      out.write("                    \n");
      out.write("                    if(string_name.length ==10 && string_pass.length >=8 ){\n");
      out.write("                        if($.isNumeric($(\"#name\").val())==true){\n");
      out.write("                             //alert(\"pass\");\n");
      out.write("                              $(\"#name\").css(\"background-color\",\"#81F781\");\n");
      out.write("                              $(\"#pass\").css(\"background-color\",\"#81F781\");\n");
      out.write("                               $(\":submit\").attr(\"disabled\", false);\n");
      out.write("                        }else{\n");
      out.write("                            $(\"#name\").css(\"background-color\",\"#F5A9BC\");\n");
      out.write("                             $(\":submit\").attr(\"disabled\", true);\n");
      out.write("                        }\n");
      out.write("                       \n");
      out.write("                    }else{\n");
      out.write("                        $(\"#name\").css(\"background-color\",\"#F5A9BC\");\n");
      out.write("                        $(\"#pass\").css(\"background-color\",\"#F5A9BC\");\n");
      out.write("                         $(\":submit\").attr(\"disabled\", true);\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            });\n");
      out.write("           \n");
      out.write("           \n");
      out.write("           \n");
      out.write("           \n");
      out.write("         \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
