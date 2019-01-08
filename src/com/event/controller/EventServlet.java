package com.event.controller;

import java.io.IOException;
/*import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;*/

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.model.EventModel;
import com.event.service.EventImp;


//@WebServlet("/EventServlet")
public class EventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		  if(request.getParameter("btn_add")!=null) 
	        {
	            String uname=request.getParameter("uname"); 
	            String name=request.getParameter("name"); 
	            String phone =request.getParameter("contact");
	          
	            String eventType=request.getParameter("eventType");
	            String deco=request.getParameter("deco");
	            String entertain = request.getParameter("entertain");
	        
	       
	            
	            EventModel addEvent=new EventModel();
	            
	            addEvent.setUserName(uname);
	            addEvent.setName(name); 
	            addEvent.setContact(phone);
	            addEvent.setEventType(eventType);
	            addEvent.setDeco(deco);
	            addEvent.setEntertain(entertain);
	          
	           
	            EventImp addImp=new EventImp(); 
	            
	            String insertValidate=addImp.checkInsert(addEvent); 
	            
	            if(insertValidate.equals("INSERT SUCCESS")) 
	            {
	                request.setAttribute("InsertSuccessMsg",insertValidate); 
	                RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
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
