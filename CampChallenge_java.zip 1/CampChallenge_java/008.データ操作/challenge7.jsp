<%-- 
    Document   : challeng7
    Created on : 2017/03/21, 12:35:47
    Author     : yoshina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%       
            //パラメーターの読み取り
           request.setCharacterEncoding("UTF-8");
           
           //java表示用
           String nm = request.getParameter("name");
           String sx = request.getParameter("sex");
           String In = request.getParameter("interest");
           
           //出力
           out.println("名前:"+nm+"<br>");
           if(sx !=null && sx.equals("男性")){
           out.println("性別:男性"+"<br>");
           }else if(sx != null && sx.equals("女性")){
           out.println("性別:女性"+"<br>");
           }else{
           out.println("性別を選択してください。"+"<br>");
           out.println("趣味:"+In);
           }
        %>
    </body>
</html>
