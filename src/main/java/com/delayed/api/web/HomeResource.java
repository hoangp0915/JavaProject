package com.delayed.api.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/api/test")
public class HomeResource extends HttpServlet {

	private static final long serialVersionUID = 1883632707291670316L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        out.print(request.getParameter("action"));
        out.flush();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println(request.getReader().lines().collect(Collectors.joining(System.lineSeparator())));
	}
}
