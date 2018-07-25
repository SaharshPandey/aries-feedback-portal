package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write(" body {\n");
      out.write("  background: #FFFFFF;\n");
      out.write("  font-family: cursive,sans-serif,serif;\n");
      out.write("  -webkit-font-smoothing: antialiased;\n");
      out.write("  -moz-osx-font-smoothing: grayscale;\n");
      out.write("}\n");
      out.write("body:before {\n");
      out.write("  content: \"\";\n");
      out.write("  position: fixed;\n");
      out.write("  top: 0;\n");
      out.write("  left: 0;\n");
      out.write("  display: block;\n");
      out.write("    width: 100%;\n");
      out.write("  height: 100%;\n");
      out.write("}\n");
      out.write(".form {\n");
      out.write("  position: relative;\n");
      out.write("  z-index: 1;\n");
      out.write("  background: #FFFFFF;\n");
      out.write("  max-width: 300px;\n");
      out.write("  margin: 100px auto 100px;\n");
      out.write("  padding: 30px;\n");
      out.write("  border-top-left-radius: 3px;\n");
      out.write("  border-top-right-radius: 3px;\n");
      out.write("  border-bottom-left-radius: 3px;\n");
      out.write("  border-bottom-right-radius: 3px;\n");
      out.write("  text-align: center;\n");
      out.write("  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);\n");
      out.write("}\n");
      out.write(".font{\n");
      out.write("  font-family: cursive, sans-serif;\n");
      out.write("  -webkit-font-smoothing: antialiased;\n");
      out.write("  -moz-osx-font-smoothing: grayscale;\n");
      out.write("}\n");
      out.write(".form input:focus {\n");
      out.write(" border-bottom: 2px solid #EF3B3A;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form input {\n");
      out.write("  outline: 0;\n");
      out.write("  background: #f2f2f2;\n");
      out.write("  width: 100%;\n");
      out.write("  border: 0;\n");
      out.write("  margin: 0 0 15px;\n");
      out.write("  padding: 15px;\n");
      out.write("  border-top-left-radius: 3px;\n");
      out.write("  border-top-right-radius: 3px;\n");
      out.write("  border-bottom-left-radius: 3px;\n");
      out.write("  border-bottom-right-radius: 3px;\n");
      out.write("  box-sizing: border-box;\n");
      out.write("  font-size: 14px;\n");
      out.write("}\n");
      out.write(".form button {\n");
      out.write("  outline: 0;\n");
      out.write("  background: #EF3B3A;\n");
      out.write("  width: 100%;\n");
      out.write("  border: 0;\n");
      out.write("  padding: 15px;\n");
      out.write("  border-top-left-radius: 3px;\n");
      out.write("  border-top-right-radius: 3px;\n");
      out.write("  border-bottom-left-radius: 3px;\n");
      out.write("  border-bottom-right-radius: 3px;\n");
      out.write("  color: #FFFFFF;\n");
      out.write("  font-size: 14px;\n");
      out.write("  -webkit-transition: all 0.3 ease;\n");
      out.write("  transition: all 0.3 ease;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body >\n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("        <div class=\"form\" >\n");
      out.write("            \n");
      out.write("            <form action=\"redirecting.jsp\" method=\"post\">\n");
      out.write("               \n");
      out.write("                <h3 class=\"font\" >Share Your Feedback With Us</h3>  \n");
      out.write("                <br>\n");
      out.write("        \n");
      out.write("            <input type=\"text\" name=\"fname\" required placeholder=\"                     Name\" >\n");
      out.write("            <br><br>\n");
      out.write("            <input type=\"email\" name=\"email\" placeholder=\"                       Email id\" pattern=\"[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}$\"  required>\n");
      out.write("            <br> <br>\n");
      out.write("            <input type=\"password\" name=\"pass\" required placeholder=\"                     Password\" required >\n");
      out.write("            ");
 //if the password entered is wrong,then we will print remark.
                if(session.getAttribute("count")==("1"))
                {
                    out.print("<p style='color:red;font-size:3'> Please enter Right Password</p>");
                }
            
      out.write("\n");
      out.write("            <button>next</button>\n");
      out.write("            <br> <br>\n");
      out.write("            \n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    </center>\n");
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
