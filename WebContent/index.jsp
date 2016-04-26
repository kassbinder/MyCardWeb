<%@ page import="java.util.List"%>
<%@ page import="com.w.card.domain.User"%>
<%@ page import="com.w.card.store.Store"%>
<%@ page import="com.w.card.store.MySQLDBStore"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Store store = new MySQLDBStore();
	List<User> users = store.listUsers();
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户列表</title>
</head>
<body>

	<table>
		<thead>
			<tr>
				<td>用户名</td>
				<td></td>
			</tr>
		</thead>
		<tbody>
			<%
				for (User u : users) {
			%>
			<tr>
				<td><a href="accountList.jsp?name=<%=u.getName()%>"><%=u.getName()%></a></td>
				<td><a href="user/remove?name=<%=u.getName()%>">删除</a></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	<a href="addNewUser.jsp">新建用户</a>
</body>
</html>