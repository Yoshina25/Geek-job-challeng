<%-- 
    Document   : challeng 7
    Created on : 2017/03/03, 16:45:15
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
         String getID(Integer a){
         String Who=" ";
        if (a==808){
        Who="名前:刑部狸,生まれ1808年,現住所愛媛県久万山";
        } else if(a==924){
        Who="名前:太郎坊,　生まれ:701年-705年?, 現住所:京都愛宕山";
        }else if(a==900){
        Who="名前:玉藻前,生まれ:1444年,　現住所：福島白河市";
        }else{
        Who="承認が出来ません、IDをお確かめください。";
        }
        return Who;
        }
        
        
       %>
        
        <%
            String a=getID(924);
            out.println(a);
        %>
    </body>
</html>
