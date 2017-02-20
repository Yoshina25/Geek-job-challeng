<%-- 
    Document   : newjsp
    Created on : 2017/02/20, 11:43:05
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
           String a="A";
       for(int n=1;n<31;n++)
       {
           out.println(a);
        }
        %>
    </body>
</html>
