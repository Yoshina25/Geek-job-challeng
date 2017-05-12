<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO"
        import="java.util.ArrayList"
        import="jums.UserDataDTO" 
        import="javax.servlet.http.HttpSession"
        import="java.util.Calendar"%>
<%
    JumsHelper jh = JumsHelper.getInstance();
    ArrayList <UserDataDTO> all = (ArrayList<UserDataDTO>)request.getAttribute("resultData");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS検索結果画面</title>
    </head>
    <body>
        <h1>検索結果</h1>
        <%if(all.size()!=0){%>
        <table border=1>
            <%for(UserDataDTO udd:all){%>
            <tr>
                <th>名前</th>
                <th>生年</th>
                <th>種別</th>
                <th>登録日時</th>
            </tr>
            <tr>
                <td><a href="ResultDetail?id=<%= udd.getUserID()%>"><%= udd.getName()%></a></td>
                <td><%= udd.getBirthday()%></td>
                <td><%= jh.exTypenum(udd.getType())%></td>
                <td><%= udd.getNewDate()%></td>
            </tr>
            <%}%>
        </table>
            <%}else{%>
            該当人物はおりません。  
            <%}%><br>
    </body>
    <%=jh.home()%>
</html>
