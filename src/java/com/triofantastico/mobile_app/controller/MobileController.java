package com.triofantastico.mobile_app.controller;



import com.triofantastico.mobile_app.DAO.MobileDAO;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.triofantastico.mobile_app.entity.Mobile;


public class MobileController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/add_mobile.jsp";
    private static String LIST_USER = "/showAll.jsp";
    private MobileDAO dao;

    public MobileController() {
        super();
        dao = new MobileDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String forward="";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")){
            int mobileId = Integer.parseInt(request.getParameter("mobileId"));
            dao.deleteMobile(mobileId);
            forward = LIST_USER;
            request.setAttribute("mobiles", dao.getAllMobiles());  
            
        } else if (action.equalsIgnoreCase("edit")){
            forward = INSERT_OR_EDIT;
            int mobileId = Integer.parseInt(request.getParameter("mobileId"));
            Mobile mobile = dao.getId(mobileId);
            request.setAttribute("mobile", mobile);
            
        } else if (action.equalsIgnoreCase("showAll")){
            forward = LIST_USER;
            request.setAttribute("mobiles", dao.getAllMobiles());
            
        } else {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Mobile mobile = new Mobile();
        mobile.setMobileModel(request.getParameter("model"));
        mobile.setMobileProducer(request.getParameter("producer"));
        mobile.setMobileProcessor(request.getParameter("processor"));
        mobile.setMobileScreen(request.getParameter("screen"));
        mobile.setMobileCamera(request.getParameter("camera"));
        mobile.setMobileSound(request.getParameter("sound"));
        mobile.setMobileMemory(request.getParameter("memory"));
        mobile.setMobileOs(request.getParameter("mobile_os"));
        mobile.setMobilePhoto(request.getParameter("photo").getBytes());
        mobile.setMobileDescription(request.getParameter("description"));
//        try {
//            Date dob = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("dob"));
//            user.setDob(dob);
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
//        user.setEmail(request.getParameter("email"));

        String mobileid = request.getParameter("mobileid");
        String mobileModel = mobile.getMobileModel();
        String mobileProducer = mobile.getMobileProducer();
        String mobileProcessor = mobile.getMobileProcessor();
        String mobileScreen = mobile.getMobileScreen();
        String mobileCamera = mobile.getMobileCamera();
        String mobileSound = mobile.getMobileSound();
        String mobileMemory = mobile.getMobileMemory();
        String mobileOs = mobile.getMobileOs();
        byte [] mobilePhoto = mobile.getMobilePhoto();
        String mobileDescription = mobile.getMobileDescription();
        
        
       
        
        if(mobileid == null || mobileid.isEmpty())
        {
            dao.addMobileDetails(mobileModel, mobileProducer, mobileProcessor, mobileScreen, mobileCamera, mobileSound, mobileMemory, mobileOs, mobilePhoto, mobileDescription  );
        }
        else
        {
            mobile.setMobileId(Integer.parseInt(mobileid));
            dao.updateMobile(mobile);
        }
        
        RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
        request.setAttribute("mobiles", dao.getAllMobiles());
        view.forward(request, response);
    }
}
