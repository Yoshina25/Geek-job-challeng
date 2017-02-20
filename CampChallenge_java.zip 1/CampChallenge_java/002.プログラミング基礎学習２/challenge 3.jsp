<%-- 
    Document   : challenge 3
    Created on : 2017/02/20, 11:09:46
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
        long a=8;
        for(int n=2;n<21;n++){
        a*=8;
       out.print("8の"+n+"乗は"+a+" ");
        }
         %>
    </body>
</html>
