package com.ty.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.dao.ItemDao;
import com.ty.dto.Item;

public class DisplayServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ItemDao itemDao = new ItemDao();
		
		List<Item> items =  itemDao.getAllItem();
		
		req.setAttribute("items", items);
		RequestDispatcher dispatcher = req.getRequestDispatcher("displayitem.jsp");
		dispatcher.forward(req, resp);
		}

}
