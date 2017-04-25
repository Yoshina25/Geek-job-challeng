<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>


<%
    HttpSession hs = request.getSession();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録画面</title>
    </head>
    <body>
    <form action="insertconfirm" method="POST">
        名前:
        <input type="text" name="name" value="<%
               if(hs.getAttribute("name") != null){
               out.println(hs.getAttribute("name"));
               }%>">
        <br><br>

        生年月日:　
        <select name="year">
            <option value="" selected="selected">
                <%
               if(hs.getAttribute("year") != null){
               out.println(hs.getAttribute("year"));
               }else{
               out.println("----");
               }%></option>
                <%
                for(int i=1950; i<=2010; i++){ %>
                <option value="<%=i%>"> <%=i%> </option>
                <% } %>
        </select>年
        <select name="month">
            <option value="" selected="selected">
                <%
               if(hs.getAttribute("month") != null){
               out.println(hs.getAttribute("month"));
               }else{
               out.println("---");
               }%></option>
            <%
            for(int i = 1; i <= 12; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option value="" selected="selected">
                <%
               if(hs.getAttribute("day") != null){
               out.println(hs.getAttribute("day"));
               }else{
                out.println("----");
               }%></option>
            <%
            for(int i = 1; i <= 31; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>日
        <br><br>

        種別:
        <br>
        <input type="radio" name="type" value="1" checked>エンジニア<br>
        <input type="radio" name="type" value="2
               <%
               if(hs.getAttribute("type") != null){
               out.println(hs.getAttribute("type"));
               }
               %>">営業<br>
        <input type="radio" name="type" value="3
               <%
               if(hs.getAttribute("type") != null){
               out.println(hs.getAttribute("type"));
               }
               %>">その他<br>
        <br>

        電話番号:
        <input type="text" name="tell" value="<%
               if(hs.getAttribute("tell") != null){
               out.println(hs.getAttribute("tell"));
               }
               %>" pattern="\d{1,5}-\d{1,4}-\d{4,5}" title="例:001-001-0001">
        <br><br>

        自己紹介文
        <br>
        <%
        /*テキストエリアはvalueの属性を持たないためvalueを削除しました。
        問題があった場合は修正してください。*/
        %>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard">
            <%
               if(hs.getAttribute("comment") == null){
               }else{
               out.println(hs.getAttribute("comment"));
               }%>
        </textarea><br><br>
        
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <br>
        
        <%    
            /*JumsHelperクラスを使ってトップへ戻す処理。*/
            new JumsHelper(); 
        %>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
