<%-- 
    Document   : redirecting
    Created on : 24 Jul, 2018, 6:22:43 AM
    Author     : Shurru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    //Redirecting index page by checking password ...
    String fname=request.getParameter("fname");
    String email=request.getParameter("email");
    session.setAttribute("fname", fname);
    session.setAttribute("email", email);
    if(request.getParameter("pass").equals("FIRSTBINA"))
                                    {
                                    response.sendRedirect("second.jsp");
                                    }
                            else    {
                                    session.setAttribute("count", "1");
                                        
    
                                    response.sendRedirect("index.jsp");
                                    }
                        %>