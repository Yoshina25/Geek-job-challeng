<%-- 
    Document   : search
    Created on : 2017/05/23, 17:04:47
    Author     : yoshina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"
        import="kagoyume.UserDataDTO"
        import="kagoyume.ItemInfor"
        import="kagoyume.Helper"
        import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
       Helper helper = Helper.getInstance();
       ArrayList<ItemInfor> itemList = (ArrayList<ItemInfor>)session.getAttribute("searchItem");       
    %>
    <%= helper.Top()%>
    <%for(int i= 0;i<itemList.size();i++){%>
    <a href="Item?ItemNumber=<%= i%>"><image src="<%= itemList.get(i).getImage()%>"/></a>
    <a href="Item?ItemNumber=<%= i%>"><%= itemList.get(i).getName()%>"</a>
    <%= itemList.get(i).getPrice()%>円
   <%}%>
    
   
    
</html>
00000