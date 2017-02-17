<%-- 
    Document   : challenge 1
    Created on : 2017/02/17, 16:23:29
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
       int num=2;   
       switch(num){
           case 1:num=1;
                out.println("one");
                break;
           case 2:num=2;
                out.println("two");
                break;
           default:num=3;
                out.println("想定外です");
                break;
                  }
    %>
    </body>
</html>
