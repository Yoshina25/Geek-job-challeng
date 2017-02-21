<%-- 
    Document   : challenge 10
    Created on : 2017/02/20, 16:57:32
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
    String sosuu=request.getParameter("param1");
    int i=Integer.parseInt(sosuu);
    
    out.println("元の数:"+i+"  "+"素数:");
         while(i%2==0){
         i/=2;
         if(i>0){
             out.println(2+"  ");
         }
             }    
         while(i%3==0){
          i/=3;
          if(i>0){
             out.println(3+"  ");
         }
         }
         while(i%5==0){ 
         i/=5;
         if(i>0){
             out.println(5+"  ");
         }
         }
         while(i%7==0){ 
         i/=7;
         if(i>0){
             out.println(7+"  ");
         }
         }
         if(i>10){out.println("その他");
         }
                    



       
         %>
    </body>
</html>
