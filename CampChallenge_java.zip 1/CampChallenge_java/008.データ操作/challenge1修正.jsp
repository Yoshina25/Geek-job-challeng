<%-- 
    Document   : challenge1
    Created on : 2017/03/17, 10:44:01
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
        <form action="./challenge2.jsp" method="post">
           名前:<input type="text" name="txtName">
           <br>
           性別:男性<input type="radio" name="M">
           女性<input type="radio" name="F">
           <br>
           趣味:<textarea name="mulTe&xt"></textarea>
           <br>
           送信:<input type="submit" name="btnSb">
        </from>
    </body>
</html>
