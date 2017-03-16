<%-- 
    Document   : challenge10
    Created on : 2017/03/15, 17:54:59
    Author     : yoshina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@page import="java.text.*"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%   
          //logを取得。
           long start = System.currentTimeMillis();
           long end = System.currentTimeMillis();
           
           //Log型をDate型に変換。
           final Date Starts = new Date(start);
           final Date Ends = new Date(end);
            
           //ログを入れるファイル作り。
           File log = new File(application.getRealPath("test.txt"));
           
           FileWriter logs = new FileWriter(log);
             out.println("開始:"+Starts);
             out.println("<br>");
             out.println("<br>");
             
              //文字の符号化。
              out.println("文字の符号化:"+System.getProperty("file.encoding"));  
              out.println("<br>"); 
              
              //絶対値の取得。
              int num=-5;            
              int N=Math.abs(num);
              out.println("絶対値の取得:"+"－5の絶対値は"+N);
              out.println("<br>");
              
              //Math.PI（円周率の利用）
              double r=10;
              double circle;
              circle = r*r*Math.PI;
              out.println("Math.PIの利用:"+circle);
              out.println("<br>");
              out.println("<br>");
              
            out.println("終了:"+Ends);
           logs.close();
           
           FileReader fr = new FileReader(log);
           BufferedReader Br = new BufferedReader(fr);
           String str;
           while((str = Br.readLine()) != null){}
        %>
    </body>
</html>
