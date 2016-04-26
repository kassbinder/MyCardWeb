<%@ page import="java.util.List"%>
<%@ page import="com.w.card.domain.Account"%>
<%@ page import="com.w.card.store.Store"%>
<%@ page import="com.w.card.store.MySQLDBStore"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Store store = new MySQLDBStore();
	String name = request.getParameter("name");
	List<Account> accounts = store.listAccounts(name);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
thead {
	color: black
}

tbody {
	color: blue;
	height: 50px
}

tfoot {
	color: green
}
</style>
<title>账户详情页</title>
</head>
<body>
	<table align="center" border="10" width="500">
		<caption>账户列表</caption>
		<thead>
			<tr>
				<th>账号</th>
				<th colspan="5">选项</th>
			</tr>
		</thead>
		<tbody>
			<%
				for (Account a : accounts) {
			%>
			<tr>
				<td align="center"><%=a.getNumber()%></td>
				<td><a
					href="accountBalance.jsp?id=<%=a.getId()%>&name=<%=name%>">余额</a></td>
				<td><a
					href="listItem.jsp?accountNumber=<%=a.getNumber()%>&name=<%=name%>">历史</a></td>
				<td><a
					href="addItem.jsp?accountNumber=<%=a.getNumber()%>&name=<%=name%>">存取
				</a></td>
				<td><a
					href="addTransfer.jsp?accountNumber=<%=a.getNumber()%>&name=<%=name%>">转账
				</a></td>
				<td align="center"><a
					href="account/remove?accountId=<%=a.getId()%>&name=<%=name%>">删除</a></td>
			</tr>

			<%
				}
			%>

		</tbody>

		<tfoot>
			<tr>
				<th align="center"><a href="addAccount.jsp?name=<%=name%>">创建新账号</a></th>
				<th colspan="2" align="center"><a
					href="userBalance.jsp?name=<%=name%>">用户总金额</a></th>
				<th colspan="3" align="center"><a href="index.jsp">返回用户界面</a></th>
			</tr>
		</tfoot>
	</table>
</body>
</html>