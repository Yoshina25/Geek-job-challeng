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
        <title>JUMS登録確認画面</title>
    </head>
    <body>
    <% 
        /*未入力がないか識別する。*/
        /*未入力項目がない場合、登録確認画面に飛ぶ。*/
        if(!hs.getAttribute("name").equals("")
            && !hs.getAttribute("year").equals("") && !hs.getAttribute("month").equals("") && !hs.getAttribute("day").equals("")
            && !hs.getAttribute("type").equals("")
            && !hs.getAttribute("tell").equals("")
            && !hs.getAttribute("comment").equals("")){ %>
    
        <h1>登録確認</h1>
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
            %><br>
        電話番号:<%= hs.getAttribute("tell")%><br>
        自己紹介:<%= hs.getAttribute("comment")%><br>
        <br>
        上記の内容で登録します。よろしいですか？
        
        <form action="insertresult" method="POST">
            <input type="hidden" name="ac" value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="yes" value="はい">
        </form>
        
    <%
    /*以下、未入力項目がある場合。*/ 
    
    }else{        

         /*未入力情報を出力する。*/
        out.println("入力が不完全です。"+"<br>"+ "下記の項目が未入力です。"+"<br>");
        if(hs.getAttribute("name").equals("")){ 
           out.println("<b>"+"・名前"+"</b>"+"<br>");
        }
        if(hs.getAttribute("year").equals("")){
           out.println("<b>"+"・生まれ年"+"</b>"+"<br>");
        }
        if(hs.getAttribute("month").equals("")){
           out.println("<b>"+"・生まれた月"+"</b>"+"<br>"); 
        }
        if(hs.getAttribute("day").equals("")){ 
           out.println("<b>"+"・生まれた日付"+"</b>"+"<br>");
        }
        if(hs.getAttribute("type").equals("")){ 
           out.println("<b>"+"・種別"+"</b>"+"<br>"); 
        }
        if(hs.getAttribute("tell").equals("")){ 
           out.println("<b>"+"・電話番号"+"</b>"+"<br>");  
        }
        if(hs.getAttribute("comment").equals("")){ 
            out.println("<b>"+"・趣味"+"</b>"+"<br>");       
        }
    }
         %>
        
        <form action="insert" method="POST">
            <input type="submit" name="no" value="登録画面に戻る">
        </form>
         
         <%
            /*JumsHelperクラスを使ってトップへ戻す処理。*/
            new JumsHelper();
         %>
         <%=JumsHelper.getInstance().home()%>
    </body>
</html>
