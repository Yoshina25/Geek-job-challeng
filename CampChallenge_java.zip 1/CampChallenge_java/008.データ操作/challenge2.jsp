<%-- 
    Document   : challenge2
    Created on : 2017/03/17, 10:46:40
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
         //パラメーターの読み取り
           request.setCharacterEncoding("UTF-8");
           
           
         //データーの受け取り。
           String name = request.getParameter("txtName");
           String sex = request.getParameter("M");
           String sex2 = request.getParameter("F");
           String interest = request.getParameter("mulText");
           
           
            out.println("お名前:"+name+"<br>");
            if(sex != null && sex2 == null){
                  out.println("男性"+"<br>");
               }else if(sex2 != null && sex == null){
                  out.println("女性"+"<br>");
               }else{
                  out.println("性別を選択してください。"+"<br>");
               }
            out.println("趣味:"+interest);
        %>
    </body>
</html>
