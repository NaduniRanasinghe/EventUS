package com.event.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.event.model.ContactusModel;

import com.event.service.Contactus;

/**
 * Servlet implementation class contactuscontroller
 */
//@WebServlet("/contactuscontroller")
public class contactuscontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contactuscontroller() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        if(request.getParameter("submit")!=null) 
        {
            String name=request.getParameter("name");
            String query = request.getParameter("query");
           String email=request.getParameter("email");
           String contact=request.getParameter("contact");
       
            
            
            ContactusModel c1=new ContactusModel(); 
            
            c1.setName(name); 
            c1.setQuery(query);
          c1.setEmail(email); 
         c1.setContact(contact);
         
            
            Contactus addc1=new Contactus(); 
            
            String insertValidate=addc1.addQuery(c1); 
            
            if(insertValidate.equals("INSERT SUCCESS")) 
            {
                request.setAttribute("InsertSuccessMsg",insertValidate);
                RequestDispatcher rd=request.getRequestDispatcher("contactus.jsp");
                rd.forward(request, response);
            }
            else
            {
                request.setAttribute("InsertErrorMsg",insertValidate); 
                RequestDispatcher rd=request.getRequestDispatcher("contactus.jsp");
                rd.include(request, response);
            }
        }
    }

}
