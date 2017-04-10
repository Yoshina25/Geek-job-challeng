<%-- 
    Document   : challenge8
    Created on : 2017/04/10, 10:45:26
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
        <form action = "challenge8_2" method  = "post">
           　　　<br>
            名前検索<br>
            <input type = "text" name = "Name">
                <br>
                    　　*お名前の一部のみご記入ください。
                <br>
                <br>
                データの挿入<br>
                ・ID<br>
                <input type = "text" name ="ID"><br>
                ・名前<br>
                <input type = "text" name = "Nm"><br>
                ・電話番号<br>
                <input type = "text" name = "tll"><br>
                ・年齢<br>
                <input type = "text" name = "ag"><br>
                ・誕生日<br>
                <input type = "text" name = "brthdy"><br>
                <input type = "submit" value = "sub">
                </form>
      
    </body>
</html>
