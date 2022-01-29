package com.ty.controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.dao.ItemDao;
import com.ty.dto.Item;
@WebServlet("/createtitem")
public class CreateItemServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String quantity=req.getParameter("qnt");
		String cost=req.getParameter("cost");
		String type=req.getParameter("type");
		Item item=new Item();
		item.setName(name);
		item.setQuantity(Integer.parseInt(quantity));
		item.setCost(Double.parseDouble(cost));
		item.setType(type);
		
		ItemDao dao=new ItemDao();
		dao.createItem(item);
		
		PrintWriter printWriter=resp.getWriter();
		printWriter.print("<html><body><h1>Item created</h1></body></html>");
		
		RequestDispatcher dispatcher=req.getRequestDispatcher("createitem.jsp");
		dispatcher.forward(req, resp);
	}
}
