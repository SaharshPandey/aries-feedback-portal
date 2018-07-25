<%-- 
    Document   : thirdjsp
    Created on : 20 Jul, 2018, 1:28:00 PM
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
.form input:focus {
 border-bottom: 2px solid #EF3B3A;
}

.form input {
  outline: 0;
 
  
  border: 0;
  margin: 0 0px 15px;
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
.li{display: inline}

textarea{overflow: auto;
width: 300px;
height: 100px;
text-indent: 0;
}

</style>

<% 
String condition=request.getParameter("condition");
String message=request.getParameter("message");
session.setAttribute("condition", condition);
session.setAttribute("message", message);
%>

<html>
    <head>
         <script type="text/javascript">
function yesnoCheck() {
    if (document.getElementById('yesCheck').checked) {
        document.getElementById('text').style.visibility = 'visible';
    }
    else document.getElementById('text').style.visibility = 'hidden';
}</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body >
    <center>
        
        <div class="form" >
            
            <form action="fourth.jsp" method="post" >
               
               
             
             <p>2. Did you initiate the collaboration with the any participant of first BINA workshop ?</p>
             <br>
              <li  style="list-style:none;">

                  <input type="radio" name="condition2" value="Yes" onclick="javascript:yesnoCheck();" id="yesCheck" checked > <p style="display:inline;margin-right: 20px">Yes</p>
            <input type="radio" name="condition2" value="No"  onclick="javascript:yesnoCheck();" id="noCheck"> No
              </li>
            <br>
            <textarea name="message2" id='text' placeholder="If so please list the name of collaborators and their affiliation."></textarea>
        


       
        
        <br> <br>
        <button>next</button>
          <br> <br>
        </form>
        </div>
        
    </center>
    </body>
</html>
