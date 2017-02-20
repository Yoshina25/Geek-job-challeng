<%-- 
    Document   : challenge 9
    Created on : 2017/02/20, 15:15:14
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
        
           
        <%@page import="java.util.HashMap"%>

         <%
             HashMap<String, String>a
             =new HashMap<String, String>();
               a.put("1","AA");
               a.put("hello","world");
               a.put("soeda","33");
               a.put("20","20");
             out.println(a.get("1"));
             out.println(a.get("hello"));
             out.println(a.get("soeda"));
             out.println(a.get("20"));
          %>
               
    </body>
</html>
