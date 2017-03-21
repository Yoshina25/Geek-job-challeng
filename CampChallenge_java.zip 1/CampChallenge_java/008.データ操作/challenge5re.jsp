<%-- 
    Document   : challenge5
    Created on : 2017/03/17, 13:51:35
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
        //Htmlで入力フォームを作る。
      %>
      <% HttpSession hs = request.getSession();%> 
        <form action="./challenge7.jsp" method = "post">
           
            名前:<input type = "text" name = "name" value = 
            "<% 
                if(hs.getAttribute("Name") != null){
                    out.println(hs.getAttribute("Name"));
                }
              %>"
            >
            <br>
            
            性別:男性<input type="radio" name = "sex" value = 
             "<%
                 if(hs.getAttribute("Sex") != null && hs.getAttribute("Sex").equals("男")){
                     out.println(hs.getAttribute("Sex"));
                 }
               %>"
             >
            女性<input type="radio" name ="sex" value=
             "<%
                 if(hs.getAttribute("Sex") != null && hs.getAttribute("Sex").equals("女性")){
                     out.println(hs.getAttribute("Sex"));
                 }
               %>"
             >      
            <br>
            
            趣味:<textarea name="interest" rows = "4" cols = "40">
            <%
                if(hs.getAttribute("Interest") != null){
                    out.println(hs.getAttribute("Interest"));
                }
             %>
            </textarea>
           <br>
           <br>
           <input type = "submit" name = "botn">
          </form> 
        
      <%
           request.setCharacterEncoding("UTF-8");
           
           //Html用の引数づくり。
           hs.setAttribute("Name", request.getParameter("name"));
           hs.setAttribute("Sex", request.getParameter("sex"));
           hs.setAttribute("Interest", request.getParameter("interest"));
           
      %>
        
 
         
    </body>
</html>
