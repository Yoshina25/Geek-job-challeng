<%-- 
    Document   : challenge1
    Created on : 2017/03/07, 12:03:35
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
      //classづくり
      class Hensuu{ 
       
      //publicな変数づくり 
        public String name;
        public int age ;

      //変数の内容 
      public void hensuu(){
       name="山上憶良";
        age=73;
                         }
      //変数の出力
     public String pr(){
         return "変数1 "+name+"<br>"+"変数2 "+age;
                     }
         }
      
         Hensuu hensuu=new Hensuu();
         hensuu.hensuu();
         out.print(hensuu.pr());
         
    class extends Hensuu{
    hensuu.Hensuu;
 
    
    }
           %>
    </body>
</html>
