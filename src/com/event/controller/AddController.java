package com.event.controller;



import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.model.AddEmp;
import com.event.service.AddDao;


public class AddController extends HttpServlet 
{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        if(request.getParameter("btn_add")!=null) 
        {
            String fname=request.getParameter("fname"); 
            String lname=request.getParameter("lname"); 
            String nic =request.getParameter("nic");
            String appDate=request.getParameter("appDate");
           String email=request.getParameter("email");
          String phone=request.getParameter("phone");
           String gender = request.getParameter("gender");
         String position= request.getParameter("department");
          
       
            
            AddEmp addEmp=new AddEmp(); 
            
            addEmp.setFname(fname); 
            addEmp.setLname(lname); 
            addEmp.setNic(nic);
            addEmp.setAppDate(appDate);
          addEmp.setEmail(email); 
         addEmp.setContact(phone);
         addEmp.setGender(gender);
        addEmp.setPosition(position);
       
           
           
            
            AddDao addDao=new AddDao(); 
            
            String insertValidate=addDao.checkInsert(addEmp); 
            
            if(insertValidate.equals("INSERT SUCCESS")) 
            {
                request.setAttribute("InsertSuccessMsg",insertValidate); 
                RequestDispatcher rd=request.getRequestDispatcher("AdminProfile.jsp");
                rd.forward(request, response);
            }
            else
            {
                request.setAttribute("InsertErrorMsg",insertValidate); 
                RequestDispatcher rd=request.getRequestDispatcher("AddEmployee.jsp");
                rd.include(request, response);
            }
        }
    }
}
