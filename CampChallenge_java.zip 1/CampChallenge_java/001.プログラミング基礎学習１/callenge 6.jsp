<%-- 
    Document   : challenge 6
    Created on : 2017/02/17, 10:35:21
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
  //クエストリンクの作成
  String hensu1=request.getParameter("param1");//パラメーターの受け取り。
  String hensu2=request.getParameter("param2");
  String hensu3=request.getParameter("param3");

     
     int d=Integer.parseInt(hensu1);//文字型→数字型。
     int e=Integer.parseInt(hensu2);
     int f=Integer.parseInt(hensu3);
     
    //商品種別判断処理。
    if (f==1){
                  out.println("雑貨");
                  }else{
      if(f==2){
                   out.println("生鮮食品");
                  }else
                   {
                   out.println("その他");
                  }
                  }
    
    //②総額と個数から単価を割り出す。総数と個数の表記。
     out.print("総額:"+d+"円"+"単価:"+d/e+"円");
   
    //③3000円以上購入で4%、5000円以上購入で5%のポイント付与。
    if(d>=5000){
              out.println(d*0.05+"ポイント付与されました。");
              }else{
        if(d>=3000){
              out.println(d*0.04+"ポイント付与されました");
              }else{
            out.println("ポイントの付与はありません。");
              }
              }
%>
</body>
</html>
