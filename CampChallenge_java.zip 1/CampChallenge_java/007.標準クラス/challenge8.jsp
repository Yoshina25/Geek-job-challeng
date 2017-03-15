<%-- 
    Document   : challenge8
    Created on : 2017/03/15, 11:20:45
    Author     : yoshina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //課題8:ファイル化。
            File text=new File(application.getRealPath("text.tx"));
            
            FileWriter fw=new FileWriter(text);
            fw.write("大澤佳奈です！\r\n");
            fw.close();
            FileWriter fwa=new FileWriter(text,true);
            fwa.write("性別は女性です。");
            fwa.close();
            
            //課題9:ファイルからの読み取り。
            FileReader fr=new FileReader(text);
            BufferedReader bw=new BufferedReader(fr);
              //二行なので、二つ読み取る。
            out.println(bw.readLine());
            out.println(bw.readLine());
            
            bw.close();
           
         %>
    </body>
</html>
