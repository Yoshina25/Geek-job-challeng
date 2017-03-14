<%-- 
    Document   : challenge4
    Created on : 2017/03/14, 17:19:58
    Author     : yoshina
--%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Date date=new Date();
        Calendar cal=Calendar.getInstance();
         Calendar cl=Calendar.getInstance();
         
        cal.set(2015,11,31,23,59,59);
        cl.set(2015,00,01,00,00,00);
 
        Date sdate=cal.getTime();
        Date dates=cl.getTime();
        
        out.println(sdate.getTime()-dates.getTime());
        %>
    </body>
</html>
