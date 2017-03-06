<%-- 
    Document   : challenge8
    Created on : 2017/03/06, 15:38:45
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
         String[][] getname(){
         String[][] who;      
         who=new String[3][4];
         who[0][0]="808";
         who[0][1]="名前:刑部狸";
         who[0][2]="生まれ:1808年";
         who[0][3]="現住所:愛媛県久万山";

         who[1][0]="924";
         who[1][1]="名前:太郎坊";
         who[1][2]="生まれ:701年-705年?";
         who[1][3]=null;
        
         who[2][0]="900";
         who[2][1]="名前:玉藻前";
         who[2][2]="生まれ:1444年";
         who[2][3]="現住所：福島白河市";
        
        return who;
         }
       %>
        
        <%
            String a[][]=getname();
            for(int i=0;i<3;i++){
             for(int f=1;f<4;f++){  
            if (a[i][f]==null){
                continue;
            }else{
            out.println(a[i][f]);
            }
            }out.println("<br>");
            }
        %>
    </body>
</html>
