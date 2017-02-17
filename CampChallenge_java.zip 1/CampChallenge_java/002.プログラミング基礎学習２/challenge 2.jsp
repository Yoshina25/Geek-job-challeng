<%-- 
    Document   : challenge 2
    Created on : 2017/02/17, 16:58:30
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
     char En='A';
     char Jp='あ';
     
      switch(Jp){
        case 'A':
            out.print("英語");
           break;
        case 'あ':
            out.print("日本語");
           break;
        default:
            out.print("  ");
            break;
                }
    %>
 
    </body>
</html>
