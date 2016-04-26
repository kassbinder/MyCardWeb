package com.w.card.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.w.card.store.MySQLDBStore;
import com.w.card.store.Store;

public class AccountTransferServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Store store = new MySQLDBStore();
		String name = req.getParameter("name");
		Float amount = Float.parseFloat(req.getParameter("amount"));
		String numberF = req.getParameter("numberF");
		String numberT = req.getParameter("numberT");
		try {
			store.transfer(numberF, numberT, amount);
			resp.sendRedirect("../accountList.jsp?name=" + name);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new RuntimeException();
		}
	}

}
