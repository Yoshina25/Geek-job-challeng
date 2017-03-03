<%-- 
    Document   : challenge6
    Created on : 2017/03/03, 12:01:18
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
         String getID(){
            return "199912525";
                            }
         String getProf(){
            return "名前:刑部狸"+"生まれ:1808年"+"生息域:愛媛、久万山";
                             }
                           
            

        %>
        <%
            out.println(getProf());
            
        %>
    </body>
</html>
