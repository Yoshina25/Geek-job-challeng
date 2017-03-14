<%-- 
    Document   : challenge3
    Created on : 2017/03/14, 15:25:54
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
 
          cal.set(2016,10,04,10,00,00);
          Date calpast=cal.getTime();
          out.println("タイムスタンプ"+calpast.getTime());
         
          SimpleDateFormat sdf=new SimpleDateFormat("yyy年MM月dd日mm分ss秒");
          String sdate=sdf.format(calpast.getTime());
          out.println(sdate);
       %>
    </body>
</html>
