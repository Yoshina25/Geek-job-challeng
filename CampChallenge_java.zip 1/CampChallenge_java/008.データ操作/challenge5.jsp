<%-- 
    Document   : challenge5
    Created on : 2017/03/17, 13:51:35
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
      <%//Htmlで入力フォームを作る。%>
      <% HttpSession hs = request.getSession(true); %> 
        <form action="./challeng5" method = "post">
           
            名前:<input type = "text" name = "name" value = "<% if(hs.getAttribute("Name")!=null){} %>">
                
           性別:男性<input type="radio" name = "sex" value="男性">
                女性<input type="radio" name ="sex" value="女性"><br>
           趣味:<textarea name="interest" rows = "4" cols = "40"></textarea><br>
           <br>
           <input type = "submit" name = "botn">
          </form>
        <%
          request.setCharacterEncoding("UTF-8");
          hs.setAttribute("Name", request.getParameter("name"));
           hs.setAttribute("Sex", request.getParameter("sex"));
           hs.setAttribute("Interest", request.getParameter("interest"));
           hs.getAttribute("Name");
      %>
    </body>
</html>
