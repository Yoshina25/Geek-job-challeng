<%-- 
    Document   : challenge11
    Created on : 2017/04/11, 10:29:01
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
        <form action = "challenge11_2" method = "post">
            *情報を変更するIDをご記入ください。
            <br>
            <input type ="text" name = "ID"><br>
            <br>
            *下記の内容に変更いたします。<br>
            ・名前<br>
            <input type = "text" name = "Nm"><br>
            ・電話番号<br>
            <input type = "text" name = "Tll"><br>
            ・年齢<br>
            <input type = "text" name = "ag"><br>
            ・誕生日<br>
            <input type = "text" name = "brthdy"><br>
            <input type = "submit" value = "送信！"><br>
            
        </form>
    </body>
</html>
