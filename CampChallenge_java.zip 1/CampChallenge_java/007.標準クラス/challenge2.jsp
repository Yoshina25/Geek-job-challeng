<%-- 
    Document   : challenge2
    Created on : 2017/03/14, 15:09:04
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
        //Dataの値の取得。
          Date date=new Date();
          Calendar cal=Calendar.getInstance();
 
          SimpleDateFormat sbf=new SimpleDateFormat("yyy年MM月dd日HH時mm分ss秒");
          String sdate=sbf.format(date);
          out.println(sdate);
       %>
    </body>
</html>
