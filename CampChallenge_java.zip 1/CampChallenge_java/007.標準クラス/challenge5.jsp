<%-- 
    Document   : challenge5
    Created on : 2017/03/14, 17:56:28
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
       String name="大澤佳奈";
       out.println("名前:大澤佳奈"+"<br>");
       out.println("名前の文字数"+name.length()+"<br>");
       out.println("バイト数"+name.getBytes().length+"<br>");
    %>
    </body>
</html>
