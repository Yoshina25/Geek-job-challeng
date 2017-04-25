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
        <title>JUMS登録結果画面</title>
    </head>
    <body>
        <h1>登録結果</h1><br>
        名前:<%= hs.getAttribute("name")%><br>
        生年月日:<%= hs.getAttribute("year")+"年"+hs.getAttribute("month")+"月"+hs.getAttribute("day")+"日"%><br>
        種別:<%= hs.getAttribute("type")%>
            <%
                if(hs.getAttribute("type").equals("1")){
                    out.println("エンジニア"+"<br>");
                }else if(hs.getAttribute("type").equals("2")){
                    out.println("営業"+"<br>");
                }else{
                    out.println("その他"+"<br>");
                }
            %>
        電話番号:<%= hs.getAttribute("tell")%><br>
        自己紹介:<%= hs.getAttribute("comment")%><br>
        <br>
        以上の内容で登録しました。<br>
        
        <%
            /*セッションを破棄する処理。*/
            session.invalidate();
        %>
        
        <%
            /*JumsHelperクラスを使ってトップへ戻す処理。*/
            new JumsHelper();
        %>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
