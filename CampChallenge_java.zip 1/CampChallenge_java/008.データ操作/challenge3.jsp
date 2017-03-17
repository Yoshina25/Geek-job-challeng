<%-- 
    Document   : challenge3
    Created on : 2017/03/17, 11:47:40
    Author     : yoshina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.Cookie"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Date time = new Date();
            Cookie C = new Cookie("LastLogin", time.toString());
            response.addCookie(C);
            
            Cookie cs[] = request.getCookies();
            if (cs != null){
               for(int a=0; a<cs.length; a++){
               if(cs[a].getName().equals("LastLogin")){
                 out.println("最後のログインは:"+cs[a].getValue());
                    break;
                  }               
               }
            }
         %>
    </body>
</html>
