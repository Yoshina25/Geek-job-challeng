<%-- 
    Document   : challenge 7
    Created on : 2017/02/20, 13:51:20
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
        String a[]={"10","100","soeda","hayashi","-20","118","END"};
        out.println(a[0]+"<br>"+a[1]+"<br>"+a[2]+"<br>"+a[3]+
                "<br>"+a[4]+"<br>"+a[5]+"<br>"+a[6]);
        
     %>
    </body>
</html>
