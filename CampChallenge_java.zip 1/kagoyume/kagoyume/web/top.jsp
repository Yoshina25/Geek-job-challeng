<%-- 
    Document   : top
    Created on : 2017/05/17, 13:25:06
    Author     : yoshina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        
    <form action = "Search" method = "get">
    <Table align = "center" bordercolor = white><td>
        <b>かごゆめにようこそ！</b><br>
        <br>
        お買い物はしたいけど、お財布の厚みも減らしたくない!!<br>
        そんなあなたに贈る疑似通販サイトです。<br>
        欲しかったあんなもの、欲しいこんなもの。<br>
        買い物かごに入れて、購入したつもりになってストレスを発散させちゃいましょう。<br>
        <br>
        <div align = "right">
        <input type="text" size="50" name="text">
        <input type="submit" name="submit" value="送信"><br>
        <font color = "red">＊実際の買い物はできないのでご注意ください。</font><br>
        </div>
    </td>
    </form>
    </body>
</html>
