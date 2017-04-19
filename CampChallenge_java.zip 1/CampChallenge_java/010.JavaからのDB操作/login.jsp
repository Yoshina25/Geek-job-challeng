<%-- 
    Document   : login
    Created on : 2017/04/13, 17:24:05
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
                //セッションを受け取った場合再度記入を求める処理。
                //ログイン失敗でlogin画面に戻るため、セッションが形成される。
                String ss = (String)session.getAttribute("ses");
                
                if(ss == "er"){
                out.println("ご記入頂いた情報に間違いがあります。再度ご入力ください。"+"<br>");
                }

            %>
        
            <form action = "servlogin" method = "post">
            <Table align = "center" bordercolor = white><td>
                    <br>
                <b>*ログインしてください。</b>
                    <br>
                名前:<input type = "text" name = "text">
            
                    <br>
                Pass:<input type = "password" name = "pass" pattern = "[0-9]*" required>
                    <br>
                    <div align = "right">
                    <font size = 2>passは数字のみ入力可能です。</font>
                    <br>
                     <input type = "submit" value = "login">
                </div>
            </td>

            

            

        </form>
    </body>
</html>
