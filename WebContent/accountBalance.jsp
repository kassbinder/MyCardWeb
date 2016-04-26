<%@ page import="java.util.List"%>
<%@ page import="com.w.card.domain.Account"%>
<%@ page import="com.w.card.store.Store"%>
<%@ page import="com.w.card.store.MySQLDBStore"%>

<%
	Store store = new MySQLDBStore();
	String name = request.getParameter("name");
	Float balance = store.accountBalance(Integer.parseInt(request.getParameter("id")));
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>账户余额显示页面</title>
</head>
<body>
	<table>
		<tr>
			<td>您的余额为：</td>
			<td><%=balance%></td>
			<td><a href="accountList.jsp?name=<%=name%>">返回</a></td>
		</tr>
	</table>
</body>
</html>