<%-- 
    Document   : index
    Created on : 23 Jul, 2018, 9:09:20 AM
    Author     : Shurru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style>
 body {
  background-color: white;
  font-family: cursive,sans-serif,serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
body:before {
  content: "";
  position: fixed;
  top: 0;
  left: 0;
  display: block;
    width: 100%;
  height: 100%;
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
.font{
  font-family: cursive, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.form input:focus {
 border-bottom: 2px solid #EF3B3A;
}

.form input {
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 10px;
  padding: 15px;
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
  border-bottom-left-radius: 3px;
  border-bottom-right-radius: 3px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  outline: 0;
  background: #EF3B3A;
  width: 100%;
  border: 0;
  padding: 15px;
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
  border-bottom-left-radius: 3px;
  border-bottom-right-radius: 3px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}

::-webkit-input-placeholder {
   text-align: center;
   color:    #aaa;
   font-size: 14px;
}

:-moz-placeholder { /* Firefox 18- */
   text-align: center;  
   color: #aaa;
   font-size: 14px;
}

::-moz-placeholder {  /* Firefox 19+ */
   text-align: center;  
   color: #aaa;
   font-size: 14px;
}

:-ms-input-placeholder {  
   text-align: center; 
   color: gray;
   font-size: 14px;
}
</style>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body >
    <center>
        
        <div class="form" >
            
            <form action="redirecting.jsp" method="post">
               
                <h3 class="font" style='font-size: 15px' >Share Your Feedback With Us</h3>  
                <br>
                <% String name="";
                   String email="";
                    try{
                    name=session.getAttribute("fname").toString();
                    email=session.getAttribute("email").toString();
                    
                   if(session.getAttribute("fname").equals(null))
                    {
                        name="";
                    }
                    if(session.getAttribute("email").equals(null))
                            {
                                email="";
                            }}
                    
                    catch(Exception e){e.printStackTrace();}
                                        
                    //String uname= name.substring(0, name.indexOf(" ") ) +" "+name.substring(name.indexOf(" ") +1);
                   
                %>
                
                <input type="text" name="fname" required placeholder="Your name" value=<%= name %> >
            <br><br>
            <input type="email" name="email" placeholder="Your email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"  required  value=<%= email %> >
            <br><br>
            <input type="password" name="pass" required placeholder="Password given to you" required >
            <br><br>
           <% //if the password entered is wrong,then we will print remark.
                if(session.getAttribute("count")==("1"))
                {
                    out.print("<p style='color:red;font-size:8.5px;'> Please enter Right Password</p>");
                }
            %>
            <button>next</button>
            <br> <br>
            
            </form>
        </div>
        
    </center>
    </body>
</html>
