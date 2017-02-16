<%-- 
    Document   : challenge 2
    Created on : 2017/02/16, 14:34:11
    Author     : yoshina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%
       String message="groob";
       String MSG="-";
       String message1="gear";
       out.println(message+MSG+message1);//groobと-、gearを連結
      %>
    </body>
</html>
