<%-- 
    Document   : sixthjsp
    Created on : 20 Jul, 2018, 1:43:37 PM
    Author     : Shurru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
  body {
  background-image: url("pattern1.jpg");
 
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 300px;
  margin: 100px auto 100px;
  padding: 30px;
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
  border-bottom-left-radius: 3px;
  border-bottom-right-radius: 3px;
  text-align: center;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

textarea{overflow: auto;
width: 300px;
height: 100px;
text-indent: 0;
}

</style>

<% 
String condition4=request.getParameter("condition4");
String message4=request.getParameter("message4");
session.setAttribute("condition4", condition4);
session.setAttribute("message4", message4);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body >
    <center>
        
        <div class="form" >
            
            <form action="final.jsp" method="post" >
               
               
             
             <p>5. Your feedback to strengthen the BINA network ?</p>
             <br>

            <textarea name="message5" placeholder="        Love to hear from you."></textarea>

            

            
       
        
        <br> <br>
        <button>next</button>
          <br> <br>
        </form>
        </div>
        
    </center>
    </body>
</html>

