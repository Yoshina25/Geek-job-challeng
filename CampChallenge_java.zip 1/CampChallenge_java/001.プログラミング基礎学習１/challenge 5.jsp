<%-- 
    Document   : challenge 5
    Created on : 2017/02/16, 17:44:08
    Author     : yoshina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>  <%
        
          int a=5;//inta5である。
          if(a==1){
              out.print("1です!");//aが1かどうかの判別。
          }//ここで1ブロック
          else
          {if(a==2)
              out.print("プログラミングキャンプです!");//2でなければ、その他に行く。
          
          else{
                  out.print("その他です!");//ここまでで1ブロック。
               }
           }//ここまでで1ブロック。

       %>
       
    </body>
</html>
