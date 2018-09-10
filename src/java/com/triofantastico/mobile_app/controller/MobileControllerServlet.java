/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.triofantastico.mobile_app.controller;

import com.triofantastico.mobile_app.DAO.MobileDAO;
import com.triofantastico.mobile_app.entity.Mobile;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Owner
 */
public class MobileControllerServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String model = request.getParameter("model");
        String producer = request.getParameter("producer");
        String procesor = request.getParameter("procesor");
        String screen = request.getParameter("screen");
        String camera = request.getParameter("camera");
        String sound = request.getParameter("sound");
        String memory = request.getParameter("memory");
        String mobileOs = request.getParameter("mobile_os");
        byte[] foto = request.getParameter("foto").getBytes();
        String description = request.getParameter("description");

        HttpSession session = request.getSession(true);

        try {
            MobileDAO mobileDAO = new MobileDAO();
            mobileDAO.addMobileDetails(model, producer, procesor, screen, camera, sound, memory, mobileOs, foto, description);

            response.sendRedirect("Success");
        } catch (Exception e) {

            e.printStackTrace();
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if (req.getParameter("showMobile") != null) {
            List<Mobile> mobileList = new ArrayList();
            //MobileDAO mobileDAO = new MobileDAO();
            mobileList = MobileDAO.getAllMobiles();
            req.setAttribute("mobileList", mobileList);
            RequestDispatcher rd = req.getRequestDispatcher("showAll.jsp");
            rd.forward(req, resp);

        }

    }
}
