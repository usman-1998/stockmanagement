package com.ty.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.dao.ItemDao;

@WebServlet("/deleteitem")
public class DeleteItemServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ItemDao dao = new ItemDao();
		
		if(dao.deleteItem(Integer.parseInt(req.getParameter("itemId")))) {
			req.setAttribute("message", "Item Deleted");
			RequestDispatcher  dispatcher = req.getRequestDispatcher("createitem.jsp");
			dispatcher.forward(req, resp);
		}
		
	}

}
