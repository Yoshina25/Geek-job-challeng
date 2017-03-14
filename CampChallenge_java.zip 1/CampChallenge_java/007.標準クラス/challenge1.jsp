<%-- 
    Document   : challenge1
    Created on : 2017/03/14, 14:29:31
    Author     : yoshina
--%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
        //Dataの値の取得。
          Date date=new Date();
          Calendar cal=Calendar.getInstance();
          
          cal.set(2016,0,1,00,00,00);
          Date calpast=cal.getTime();
          out.println(calpast.getTime());
       %>
    </body>
</html>
