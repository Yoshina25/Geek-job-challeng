<%-- 
    Document   : challenge4
    Created on : 2017/02/28, 15:21:09
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
         <%!
            Integer getN(Integer a,Integer b,boolean type)
            {
                int c=a*b;
                if (type==true){
                  c=c*c;
                }
                return c;
             }
         %>
         <%
          out.println(getN(5,6,false));
          %>
    </body>
</html>
