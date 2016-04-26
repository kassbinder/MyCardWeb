<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.w.card.domain.User"%>
<%@ page import="com.w.card.domain.Account"%>
<%@ page import="com.w.card.domain.Item"%>
<%@ page import="com.w.card.store.Store"%>
<%@ page import="com.w.card.store.MySQLDBStore"%>

<%
	Store store = new MySQLDBStore();
	String name = request.getParameter("name");
	String number = request.getParameter("accountNumber");
	List<Item> litem = store.listItems(number);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>账号历史纪录页面</title>
</head>
<body>
<table align="center" border="10" width="500">
		<caption>存取记录</caption>
		<thead>
			<tr>
				<th>时间</th>
				<th>金额</th>
			</tr>
		</thead>
		<tbody>
			<%
				for (Item i : litem) {
			%>
			<tr>
				<td><%=i.getCreatedAt()%></td>
				<td><%=i.getAmount()%></td>
				
			</tr>

			<%
				}
			%>

		</tbody>

		<tfoot>
			<tr>
			<td><a href="accountList.jsp?name=<%=name%>">返回</a></td>
			</tr>
		</tfoot>
	</table>

</body>
</html>