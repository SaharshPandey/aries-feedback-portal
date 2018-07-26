
    <%-- santosh@aries.res.in

<%-- 

    Document   : finaljsp
    Created on : 20 Jul, 2018, 1:45:59 PM
    Author     : Shurru
--%>

<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<style>

.form .thumbnail {
  align-content: center;
  width: 450px;
  height: 200px;
  margin: 0 auto 30px;
  padding: 50px 30px;
  border-top-left-radius: 100%;
  border-top-right-radius: 100%;
  border-bottom-left-radius: 100%;
  border-bottom-right-radius: 100%;
  margin-top: 100px;
  box-sizing: border-box;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.form .thumbnail img {
  display: block;
  width: 100%;
}


</style>
  

<%String feedback="";

String result;

//Reciever's email ID needed...
String to1= "amazingsaharsh@gmail.com";
//String to2=Peter.DeCat@oma.be;
// Sender's email ID needs to be mentioned
String from="apollotooldevelopers@gmail.com";

// Assuming you are sending email from localhost
String host="smtp.gmail.com";
String port="587";
    try{
       // String name=session.getAttribute("fname").toString();
       // String email=session.getAttribute("email").toString();
        String message=session.getAttribute("message").toString();
        String message2=session.getAttribute("message2").toString();
        String message3=session.getAttribute("message3").toString();
        String message4=session.getAttribute("message4").toString();
        String message5=request.getParameter("message5");
        session.setAttribute("message5", message5);
   
//Checking if messages are empty ..
    if(session.getAttribute("message").toString().equals(null))
    {
    message=" ";
    }
    if(session.getAttribute("message2").toString().equals(null))
    {
    message2=" ";
  }
    if(session.getAttribute("message3").toString().equals(null))
    {
    message3=" ";
   }if(session.getAttribute("message4").toString().equals(null))
    {
    message4=" ";
   }if(session.getAttribute("message5").toString().equals(null))
    { message5=" ";
    
    }
   
    
    
  //This is the message content for the mail....and also the final output

   feedback="User Name = "+session.getAttribute("fname")
              +"\n"+"Email Id = "+session.getAttribute("email")
              +"\n\n\n"+"1. Are you benefited with the First BINA workshop ?"
                      +"\n\n"+session.getAttribute("condition")+". "+message
              +"\n\n\n"+"2. Did you initiate the collaboration with the any participant of first BINA workshop ?"
                      +"\n\n"+session.getAttribute("condition2")+". "+message2
              +"\n\n\n"+"3. Did you get observing time on 3.6-m DOT after the first BINA workshop ?"
                      +"\n\n"+session.getAttribute("condition3")+". "+message3
              +"\n\n\n"+"4. Have you published or plan to publish any results from the Indo-Belgian collaborations ?"
                      +"\n\n"+session.getAttribute("condition4")+". "+message4
              +"\n\n\n"+"5. Your feedback to strengthen the BINA network ?"
                      +"\n\n"+message5;
   
    
}
    catch(Exception e)
    {
    e.printStackTrace();
    }
    //Writing into File that contains all the feedback given by the user...
    FileWriter filewriter=null;
    try{
          String file = "C:/Users/Shurru/Documents/NetBeansProjects/ARIES Site Project/feedback-Form/feedback.txt";
          filewriter = new FileWriter(file, true);
          filewriter.append(feedback);
          //Just for appearance..
          filewriter.append("\n\n"+"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "+"\n\n");
    }catch(IOException e){
         e.printStackTrace();
    }
    finally{
     //Closing the File...
     filewriter.close();}
    
   

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
   

//Authenticating username and password so the mail can be sent.
   Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("apollotooldevelopers@gmail.com", "apollo2274");
            }
        };
   // Get the default Session object.
   Session mailSession = Session.getInstance(properties,auth);

   try {
      // Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(mailSession);
      
      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));
      
      // Set To: header field of the header.
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to1));
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress("sjoshiaries@gmail.com"));
      // Set Subject: header field
      message.setSubject("New Feedback Registered!");
      
      // Now set the actual message
      
      message.setText(feedback);
      
      // Send message
      Transport.send(message);
      out.println("<br><br><br><br>");
      result = "Thanks for your Feedback";
   } catch (MessagingException mex) {
      mex.printStackTrace();
      out.println("<br><br><br><br>");
      result = "Check your Internet Connection ";
   }
   
  
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body style="background-color: white ">
    <center>
        
        <div class="form" >
            
           <div class="thumbnail"><img src="thankyou.png"/></div>
        </div>

        <% 
            //Just for Checking,therefore printing them.
            
            /* out.println(session.getAttribute("fname") + "   "+ session.getAttribute("email"));
            out.println(session.getAttribute("condition") + "   " +session.getAttribute("message"));
            out.println(session.getAttribute("condition2") + "   " +session.getAttribute("message2"));
            out.println(session.getAttribute("condition3") + "   " +session.getAttribute("message3"));
            out.println(session.getAttribute("condition4") + "   " +session.getAttribute("message4"));
            out.println(session.getAttribute("message5"));
            */
            out.println("\n"+result);
        %>

        

    </center>
    </body>
</html>

