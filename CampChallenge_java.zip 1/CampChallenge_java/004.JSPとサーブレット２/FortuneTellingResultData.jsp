<%-- 
    Document   : FortuneTellingResultData
    Created on : 2017/02/27, 10:16:04
    Author     : yoshina
--%>


<%@page import="org.mypackage.sample.ResultData" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            ResultData data = (ResultData)request.getAttribute("DATA");     
         %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        if(data !=null){
            out.print("<h>貴方の"+data.getD()+"運勢は"+data.getLuck()+"です！</h>");
                       }
         %>
    </body>
</html>
