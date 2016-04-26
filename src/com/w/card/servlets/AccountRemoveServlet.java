package com.w.card.servlets;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.w.card.store.MySQLDBStore;
import com.w.card.store.Store;

public class AccountRemoveServlet extends HttpServlet {

	@Override
	public void doGet(final HttpServletRequest request, final HttpServletResponse response) {
		// TODO Auto-generated method stub
		Store store = new MySQLDBStore();
		String name = request.getParameter("name");
		int accountId = Integer.parseInt(request.getParameter("accountId"));
		try {
			store.removeAccount(accountId);
			response.sendRedirect("../accountList.jsp?name=" + name);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
	}

}
