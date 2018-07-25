package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import javax.servlet.http.*;
import javax.servlet.*;

public final class final_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<style>\n");
      out.write("\n");
      out.write(".form .thumbnail {\n");
      out.write("  align-content: center;\n");
      out.write("  width: 450px;\n");
      out.write("  height: 200px;\n");
      out.write("  margin: 0 auto 30px;\n");
      out.write("  padding: 50px 30px;\n");
      out.write("  border-top-left-radius: 100%;\n");
      out.write("  border-top-right-radius: 100%;\n");
      out.write("  border-bottom-left-radius: 100%;\n");
      out.write("  border-bottom-right-radius: 100%;\n");
      out.write("  margin-top: 100px;\n");
      out.write("  box-sizing: border-box;\n");
      out.write("  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);\n");
      out.write("}\n");
      out.write(".form .thumbnail img {\n");
      out.write("  display: block;\n");
      out.write("  width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
  String message5=request.getParameter("message5");
    session.setAttribute("message5", message5);

      out.write('\n');

   String feedback="User Name = "+session.getAttribute("fname").toString()
              +"\n"+"Email Id = "+session.getAttribute("email").toString()
              +"\n\n"+"1. Are you benefited with the First BINA workshop ?"
                      +"\n"+session.getAttribute("condition")+","+session.getAttribute("message")
              +"\n\n"+"2. Did you initiate the collaboration with the any participant of first BINA workshop ?"
                      +"\n"+session.getAttribute("condition2")+","+session.getAttribute("message2")
              +"\n\n"+"3. Did you get observing time on 3.6-m DOT after the first BINA workshop ?"
                      +"\n"+session.getAttribute("condition3")+","+session.getAttribute("message3")
              +"\n\n"+"4. Have you published or plan to publish any results from the Indo-Belgian collaborations ?"
                      +"\n"+session.getAttribute("condition4")+","+session.getAttribute("message4")
              +"\n\n"+"5. Your feedback to strengthen the BINA network ?"
                      +"\n"+session.getAttribute("message5");
    String result;
    FileWriter filewriter=null;
    try{
          String file = "C:/Users/Shurru/Documents/NetBeansProjects/feedback-Form/feedback.txt";
          filewriter = new FileWriter(file, true);
          filewriter.append(feedback);
          filewriter.append("\n\n"+"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "+"\n\n");
    }catch(IOException e){
         e.printStackTrace();
    }
    finally{
     filewriter.close();}
    
   // Recipient's email ID needs to be mentioned.
   String to = "santosh@aries.res.in";

   // Sender's email ID needs to be mentioned
   String from = session.getAttribute("email").toString().trim();

   // Assuming you are sending email from localhost
   String host = "smtp.gmail.com";
   String port="587";

   // Get system properties object
   Properties properties = System.getProperties();

   // Setup mail server
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.ssl.trust", "smtp.gmail.com");
//properties.setProperty("mail.user", "saharshpandeybolt@gmail.com");
//properties.setProperty("mail.password", "*saharsh500*");
   // Get the default Session object.
   Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("apollotooldevelopers@gmail.com", "apollo2274");
            }
        };
   Session mailSession = Session.getInstance(properties,auth);

   try {
      // Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(mailSession);
      
      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));
      
      // Set To: header field of the header.
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      // Set Subject: header field
      message.setSubject("New Feedback Registered!");
      
      // Now set the actual message
      
      message.setText(feedback);
      
      // Send message
      Transport.send(message);
      result = "Thanks for your Feedback";
   } catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error submitting Feedback ";
   }
   
  

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: white \">\n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("        <div class=\"form\" >\n");
      out.write("            \n");
      out.write("           <div class=\"thumbnail\"><img src=\"thankyou.png\"/></div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        ");
  /*out.println(session.getAttribute("fname").toString() + "   "+ session.getAttribute("email").toString());
            out.println(session.getAttribute("condition") + "   " +session.getAttribute("message"));
            out.println(session.getAttribute("condition2") + "   " +session.getAttribute("message2"));
            out.println(session.getAttribute("condition3") + "   " +session.getAttribute("message3"));
            out.println(session.getAttribute("condition4") + "   " +session.getAttribute("message4"));
            out.println(session.getAttribute("message5"));
            */
            out.println("\n"+result);
        
      out.write("\n");
      out.write("\n");
      out.write("        \n");
      out.write("\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
