<%-- 
    Document   : challenge3
    Created on : 2017/02/16, 15:54:25
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
       final String message="名前:";
       String MSG="大澤佳奈<br>";
        out.println(message+MSG);//名前の表記
       
      final String message1="出身:";
      String MSG1="千葉県<br>";
        out.println(message1+MSG1);//出身の表記
     
      final String message2="特技:";
      String MSG2="迷子。何処でも迷えます。";
        out.print(message2+MSG2); //特技の連結
        %>
    </body>
</html>
