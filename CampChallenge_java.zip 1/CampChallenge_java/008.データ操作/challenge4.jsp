<%-- 
    Document   : challenge4
    Created on : 2017/03/17, 13:26:09
    Author     : yoshina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "javax.servlet.http.HttpSession"%>
<%@page import= "java.util.Date"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           Date time = new Date();
           HttpSession hs = request.getSession(true);
           hs.setAttribute("LastLogin", time.toString());

           out.println("前回のログインは："+hs.getAttribute("LastLogin"));
         %>
    </body>
</html>
