<%-- 
    Document   : challenge 4
    Created on : 2017/02/16, 16:14:35
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
       int a=5;
       final int b=11;//数の定義
       int c=5,d=6,e=8,f=1;//演算用の数の定義。
         out.println("5+5="+(a+c)+"<br>");//以下変数での計算に入る。
         out.println("5-6="+(a-d)+"<br>");
         out.println("5×8="+(a*e)+"<br>");
         out.println("5÷1="+(a/f)+"<br>");  
          
          out.println("<br>");
          out.println("<br>");//二行改行。
          
         out.print("11+5="+(b+c)+"<br>");//以下定数での計算に入る。
         out.print("11-6="+(b-d)+"<br>");
         out.print("11×6="+(b*e)+"<br>");
         out.print("11÷1="+(b/f)+"<br>");
          %>
    </body>
</html>
