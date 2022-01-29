package com.ty.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.dao.ItemDao;
import com.ty.dto.Item;

@WebServlet("/searchitem")
public class SeacrchItemServlet extends HttpServlet{
			
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String item = req.getParameter("item");
		String type = req.getParameter("type");
		
		ItemDao dao = new ItemDao();
		List<Item> items = dao.searchItem(item, type);
		
		req.setAttribute("items", items);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("displayitem.jsp");
		dispatcher.forward(req, resp);
		
	}
}
