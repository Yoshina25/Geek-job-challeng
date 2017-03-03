<%-- 
    Document   : challenge3
    Created on : 2017/02/27, 17:15:18
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
        <%!
            Integer getSu(){
         return 57;
                             }
          %>
          <%
              
             if (getSu()%2==0){
               out.println("偶数です");
               }
             else{
                 out.println("奇数です！");
                     }
             
          
          %>
    </body>
</html>
