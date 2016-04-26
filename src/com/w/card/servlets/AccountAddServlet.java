package com.w.card.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.w.card.store.MySQLDBStore;
import com.w.card.store.Store;

public class AccountAddServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Store store = new MySQLDBStore();
		String userName = req.getParameter("name");
		String accountNumber = req.getParameter("number");
		try {
			store.addAccount(userName, accountNumber);
			resp.sendRedirect("../accountList.jsp?name=" + userName);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}

	}

}
