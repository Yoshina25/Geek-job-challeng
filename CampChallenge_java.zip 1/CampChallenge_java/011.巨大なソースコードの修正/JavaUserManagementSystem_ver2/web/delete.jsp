<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO" %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    UserDataDTO udd = (UserDataDTO)request.getAttribute("resultData");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <h1>削除確認</h1>
    以下の内容を削除します。よろしいですか？<br>
    名前:<b><%= udd.getName()%></b><br>
    生年月日:<b><%= udd.getBirthday()%></b><br>
    種別:<b><%= jh.exTypenum(udd.getType())%></b><br>
    電話番号:<b><%= udd.getTell()%></b><br>
    自己紹介:<b><%= udd.getComment()%></b><br>
    登録日時:<b><%= udd.getNewDate()%></b><br>
    
    <form action="DeleteResult" method="POST">
      <input type="hidden" name="id" value="<%=udd.getUserID()%>">
      <input type="submit" name="YES" value="はい"style="width:100px">
    </form>
    <form action="ResultDetail" method="POST">
    <input type="hidden" name="id" value="<%=udd.getUserID()%>">
    <input type="submit" name="BackResultDetail" value="詳細画面"style="width:100px">
    </form>
    <%=jh.home()%>
    </body>
</html>
