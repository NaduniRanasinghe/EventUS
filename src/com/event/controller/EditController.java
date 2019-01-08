package com.event.controller;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.model.AddEmp;
import com.event.service.EditDao;


public class EditController extends HttpServlet 
{

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        if(request.getParameter("btn_edit")!=null) 
        {	
        	 String nic=request.getParameter("nic");
            String fname=request.getParameter("fname"); 
            String lname=request.getParameter("lname"); 
            String appDate=request.getParameter("appDate");
            String email=request.getParameter("email");
            String phone=request.getParameter("phone");
            String gender = request.getParameter("gender");
            String position= request.getParameter("position");
             
            int hidden_id=Integer.parseInt(request.getParameter("hidden_id")); 
            
            AddEmp editEmp=new AddEmp(); 
            editEmp.setNic(nic);
            editEmp.setFname(fname); 
            editEmp.setLname(lname); 
            editEmp.setContact(phone);
            editEmp.setEmail(email);
            editEmp.setGender(gender);
            editEmp.setPosition(position);
            editEmp.setAppDate(appDate);
            editEmp.setId(hidden_id);
            
            EditDao editDao=new EditDao();
            
            String updateValidate=editDao.checkUpdate(editEmp); 
            
            if(updateValidate.equals("UPDATE SUCCESS")) 
            {
                request.setAttribute("UpdateSuccessMsg",updateValidate); 
                RequestDispatcher rd=request.getRequestDispatcher("Employees.jsp");
                rd.forward(request, response);
            }
            else
            {
                request.setAttribute("UpdateErrorMsg",updateValidate); 
                RequestDispatcher rd=request.getRequestDispatcher("EditEmp.jsp");
                rd.include(request, response);
            }
        }
    }
}
