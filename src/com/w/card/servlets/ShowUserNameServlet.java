package com.w.card.servlets;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShowUserNameServlet extends HttpServlet {

	@Override
	public void doGet(final HttpServletRequest request, final HttpServletResponse response) {
		try {
			String path = "../workspace/MyCardWeb/WebContent/html" + request.getServletPath();
			if(new File(path).exists()) {
				BufferedReader reader = new BufferedReader(
						new InputStreamReader(new FileInputStream(path)));
				String line = reader.readLine();
				line = line.replace("{name}", request.getParameter("name"));
				do {
					response.getWriter().append(line).append("\n");
					line = reader.readLine();
				} while (line != null);
				reader.close();
			} else {
				response.getWriter().write("Not Found");
			}
			
			response.getWriter().close();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

}