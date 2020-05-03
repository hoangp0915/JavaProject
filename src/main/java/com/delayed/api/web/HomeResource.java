package com.delayed.api.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.delayed.model.PostModel;
import com.delayed.service.PostService;
import com.google.gson.Gson;

@WebServlet("/api/test")
public class HomeResource extends HttpServlet {

	private static final long serialVersionUID = 1883632707291670316L;

	private Gson gson = new Gson();

	@Inject
	private PostService postService;

	/**
	 * Do get API {@inheritDoc}
	 * 
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest,
	 *      javax.servlet.http.HttpServletResponse)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		List<PostModel> post = postService.findAll();
		out.print(this.gson.toJson(post));
		out.flush();
	}

	/**
	 * Do Post API {@inheritDoc}
	 * 
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest,
	 *      javax.servlet.http.HttpServletResponse)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		String requestBody = request.getReader().lines().collect(Collectors.joining(System.lineSeparator()));
		PostModel post = new Gson().fromJson(requestBody, PostModel.class);
		PostModel postModel = postService.save(post);
		out.print(this.gson.toJson(postModel));
		out.flush();
	}

	/**
	 * Do Put API {@inheritDoc}
	 * 
	 * @see javax.servlet.http.HttpServlet#doPut(javax.servlet.http.HttpServletRequest,
	 *      javax.servlet.http.HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		String requestBody = request.getReader().lines().collect(Collectors.joining(System.lineSeparator()));
		PostModel post = new Gson().fromJson(requestBody, PostModel.class);
		try {
			postService.updateById(post);
		} catch (Exception e) {
			e.printStackTrace();
		}
		out.print(this.gson.toJson(post));
		out.flush();
	}

	/**
	 * Do Delete Example {@inheritDoc}
	 * 
	 * @see javax.servlet.http.HttpServlet#doDelete(javax.servlet.http.HttpServletRequest,
	 *      javax.servlet.http.HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id = request.getParameter("ids");
		postService.deleteByIds(id);
		PrintWriter out = response.getWriter();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		out.print(this.gson.toJson(id));
		out.flush();
	}
}
