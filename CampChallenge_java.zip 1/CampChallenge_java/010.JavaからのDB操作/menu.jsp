<%-- 
    Document   : menue
    Created on : 2017/04/13, 17:24:17
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
        
        
         <form action = "servmenu" method = "post">
                 <Table align = "center" bordercolor = white><td>
                        <br>
                    <b>商品登録</b>
                        <br>
                    ・商品名:<input type = "text" name = "objct"> 
                        <br>
                    ・商品ID:<input type = "text" name = "objID" pattern = "[0-9]*"　values = "">
                        <br>
                    ・商品数:<input type = "text" name = "sum" pattern = "[0-9]*" values = "">
                        <br>
                    &nbsp;&nbsp;&nbsp;<font size = "2">*IDと商品数は数字のみご記入ください。</font>
                        <br>
                        <br>
                    <b>全件表示</b>:
                    yes<input type = "radio" name = "show" value = "yes">
                    no<input type = "radio" name = "show" value = "no" checked>
                        <br>
                    <div align = "right">
                    <input type = "submit" value = "送信"></div>
                    <div align = "center">
                        <br>
                        <br>
                        <a href = './logout.jsp'>ログアウト</a></div>
                   </td>
                    </table>
             
        </form>
    </body>
</html>
