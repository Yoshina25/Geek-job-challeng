<%-- 
    Document   : challenge 5
    Created on : 2017/02/20, 11:50:03
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
          int num=0;
          for(int a=0;a<101;a++)
          {
           num+=a;
           out.print(num+" ");
           } 
       %>
    </body>
</html>
