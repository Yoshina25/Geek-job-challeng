<%-- 
    Document   : challenge5
    Created on : 2017/03/03, 11:06:10
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
            <%!      //メソッドの定義。
            String getMyName(){
                           return"大澤佳奈";
                                      }
            String getBorn(){
                           return"1991年12月26日";
                             }
            String getAbout(){
                           return"特技：迷子";
                               }
            
            boolean getTMR(){
            boolean a=true;
            return a;
                            }
                        
            %>
            <%    //メソッドの受け取り。
                      String atr=getMyName();
                      String i=getBorn();
                      String a=getAbout();
                      
                      
                  //受け取ったメソッドを10回繰り返す。
                      for (int b=0;b<=10;b++)
                                 {
                      out.println("名前:");
                      out.println(atr);
                      out.println("生年月日：");
                      out.println(i);
                      out.println(a);
                                     }
                                    
                 //booleanの受け取り。
                 if(getTMR()==true){
                     out.println("この処理は正しく実行されました。");
                 }
                 else
                 {   
                   out.println("正しく実行されませんでした。");
                 }

          %>   
    </body>
</html>
