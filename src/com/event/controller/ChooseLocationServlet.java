package com.event.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.model.ChooseLocationModel;

import com.event.service.ChooseLocationImp;


/**
 * Servlet implementation class ChooseLocationImp
 */
//@WebServlet("/ChooseLocationServlet")
public class ChooseLocationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		if(request.getParameter("btn_add")!=null) 
        {
            String loc=request.getParameter("halls"); 
            int size=Integer.parseInt(request.getParameter("quantity")); 
            String date =request.getParameter("date");
          
         
            ChooseLocationModel addLoc=new ChooseLocationModel(); 
            
            addLoc.setLocName(loc); 
            addLoc.setLocQuantity(size); 
            addLoc.setDate(date);
        
            ChooseLocationImp locImp=new ChooseLocationImp(); 
            
            String insertValidate=locImp.checkInsert(addLoc); 
            
            if(insertValidate.equals("INSERT SUCCESS")) 
            {
               
                RequestDispatcher rd=request.getRequestDispatcher("createEvent.jsp");
                rd.forward(request, response);
            }
            else
            {
                request.setAttribute("InsertErrorMsg",insertValidate); 
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                rd.include(request, response);
            }
        }
    }
}