package com.w.card.servlets;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.w.card.store.MySQLDBStore;
import com.w.card.store.Store;

public class UserRemoveServlet extends HttpServlet {

	@Override
	public void doGet(final HttpServletRequest request, final HttpServletResponse response) {
		Store store = new MySQLDBStore();
		try {
			store.removeUser(request.getParameter("name"));
			response.sendRedirect("../index.jsp");
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

}
