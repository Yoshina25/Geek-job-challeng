<%@page import="javax.servlet.http.HttpSession"
        import="jums.JumsHelper"
%>

<% 
   HttpSession forBack =request.getSession();
   JumsHelper jh = JumsHelper.getInstance();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>削除結果画面</title>
    </head>
    <body>
    <h1>削除確認</h1>
    削除しました。<br>
        <form action="SearchResult" method="POST">
        <input type="hidden" name="forback"  value="<%= forBack.getAttribute("name")%>">
        <input type="hidden" name="forback"  value="<%= forBack.getAttribute("year")%>">
        <input type="hidden" name="forback"  value="<%= forBack.getAttribute("type")%>">
        <input type="submit" name="BackSearchResult" value="検索結果"style="width:100px">
        </form>
    </body>
    <%=jh.home()%>
</html>
