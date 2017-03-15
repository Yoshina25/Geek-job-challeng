<%-- 
    Document   : challenge7
    Created on : 2017/03/15, 10:35:54
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
            String change="きょうはぴいえいちぴいのくみこみかんすうのがくしゅうをしています";
            out.println(change.replace("う","u").replace("い","i"));
         %>
    </body>
</html>
