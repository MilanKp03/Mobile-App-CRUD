/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.triofantastico.mobile_app.controller;

import com.triofantastico.mobile_app.DAO.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Owner
 */
public class UserControllerServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
 
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
 
        String userName = request.getParameter("userName");
        String password = request.getParameter("password1");
        String email = request.getParameter("email");
        
 
        HttpSession session = request.getSession(true);
        
        try {
            UserDAO userDAO = new UserDAO();
            userDAO.addUserDetails(userName, password, email);
            
            response.sendRedirect("Success");
        } catch (Exception e) {
 
            e.printStackTrace();
        }
 
    }

    
}
