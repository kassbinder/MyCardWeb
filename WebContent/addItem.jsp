<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.w.card.domain.User"%>
<%@ page import="com.w.card.domain.Account"%>
<%@ page import="com.w.card.store.Store"%>
<%@ page import="com.w.card.store.MySQLDBStore"%>

<%
	Store store = new MySQLDBStore();
	String name = request.getParameter("name");
	String number = request.getParameter("accountNumber");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>存取款用户操作页面</title>
</head>
<body>
	<form action="item/add?name=<%=name%>&number=<%=number%>" method="post">
		<label>金额</label> <input type="text" name="amount"></input> <input
			type="submit" value="保存" />
	</form>

</body>
</html>