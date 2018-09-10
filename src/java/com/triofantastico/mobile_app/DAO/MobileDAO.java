/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.triofantastico.mobile_app.DAO;

import com.triofantastico.mobile_app.entity.Mobile;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Owner
 */
public class MobileDAO {

    public void addMobileDetails(String mobileModel, String mobileProducer, String mobileProcessor, String mobileScreen, String mobileCamera, String mobileSound, String mobileMemory, String mobileOs, byte[] mobilePhoto, String mobileDescription) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();

        Mobile mobile = new Mobile();
        mobile.setMobileModel(mobileModel);
        mobile.setMobileProducer(mobileProducer);
        mobile.setMobileProcessor(mobileProcessor);
        mobile.setMobileScreen(mobileScreen);
        mobile.setMobileCamera(mobileCamera);
        mobile.setMobileSound(mobileSound);
        mobile.setMobileMemory(mobileMemory);
        mobile.setMobileOs(mobileOs);
        mobile.setMobilePhoto(mobilePhoto);
        mobile.setMobileDescription(mobileDescription);
        session.save(mobile);
        transaction.commit();

        session.close();

    }

    public void deleteMobile(int mobileId) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();

        Mobile clt = new Mobile();

        clt = (Mobile) session.load(Mobile.class, mobileId);

        session.delete(clt);
        transaction.commit();
        session.close();

    }

    public void updateMobile(Mobile mobile) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();

        session.update(mobile);
        transaction.commit();
        session.close();

    }

    public Mobile getId(int mobileId) {

        Session session = HibernateUtil.getSessionFactory().openSession();

        //Transaction transaction = session.beginTransaction();
        Mobile clt = new Mobile();

        clt = (Mobile) session.load(Mobile.class, mobileId);

        session.close();

        return clt;

    }

    public static List<Mobile> getAllMobiles() {
        List<Mobile> mobileList = new ArrayList();

        Session session = HibernateUtil.getSessionFactory().openSession();
        //Transaction transaction = session.beginTransaction();

        Query query = session.createQuery("From Mobile");
        mobileList = query.list();

        return mobileList;
    }

//    // 1. configuring hibernate
//    Configuration configuration = new Configuration().configure();
//
//    // 2. create sessionfactory
//    SessionFactory sessionFactory = configuration.buildSessionFactory();
//
//    public void addUserDetails(String userName, String password, String email) {
//        try {
//            // 1. configuring hibernate
//            //Configuration configuration = new Configuration().configure();
//
//            // 2. create sessionfactory
//            //SessionFactory sessionFactory = configuration.buildSessionFactory();
//            // 3. Get Session object
//            Session session = sessionFactory.openSession();
//
//            // 4. Starting Transaction
//            Transaction transaction = session.beginTransaction();
//            User user = new User();
//            user.setUsername(userName);
//            user.setPassword(password);
//            user.setEmail(email);
//            session.save(user);
//            transaction.commit();
//            System.out.println("\n\n Details Added \n");
//
//        } catch (HibernateException e) {
//            System.out.println(e.getMessage());
//            System.out.println("error");
//        }
//
//    }
//
//    public void deleteUser(int userId) {
//
//        
//
//            // 1. configuring hibernate
//            //Configuration configuration = new Configuration().configure();
//            // 2. create sessionfactory
//            //SessionFactory sessionFactory = configuration.buildSessionFactory();
//            // 3. Get Session object
//            Session session = sessionFactory.openSession();
//
//            // 4. Starting Transaction
//            Transaction transaction = session.beginTransaction();
//
//            try {
//            
//            User clt = new User();
//
//            clt = (User) session.load(User.class, userId);
//
//            session.beginTransaction();
//            session.delete(clt);
//            transaction.commit();
//        } catch (Exception e) {
//            e.printStackTrace();
//            transaction.rollback();
//
//        }
//    }
//
//    public void updateUser(User user) {
//
//        // 1. configuring hibernate
//        //Configuration configuration = new Configuration().configure();
//        // 2. create sessionfactory
//        //SessionFactory sessionFactory = configuration.buildSessionFactory();
//        // 3. Get Session object
//        Session session = sessionFactory.openSession();
//
//        // 4. Starting Transaction
//        Transaction transaction = session.beginTransaction();
//
//        try {
//            session.beginTransaction();
//            session.update(user);
//            transaction.commit();
//        } catch (Exception e) {
//            e.printStackTrace();
//            transaction.rollback();
//        }
//    }
//
//    public User getId(int userId) {
//
//        // 1. configuring hibernate
//        //Configuration configuration = new Configuration().configure();
//        // 2. create sessionfactory
//        //SessionFactory sessionFactory = configuration.buildSessionFactory();
//        // 3. Get Session object
//        Session session = sessionFactory.openSession();
//
//        // 4. Starting Transaction
//        Transaction transaction = session.beginTransaction();
//
//        User clt = new User();
//
//        try {
//            session.beginTransaction();
//            clt = (User) session.load(User.class, userId);
//        } catch (Exception e) {
//            e.printStackTrace();
//            session.getTransaction().rollback();
//        }
//        return clt;
//    }
//
//    public static List<User> getAllUsers() {
//        List<User> userList = new ArrayList();
//
//        // 1. configuring hibernate
//        Configuration configuration = new Configuration().configure();
//
//        // 2. create sessionfactory
//        SessionFactory sessionFactory = configuration.buildSessionFactory();
//
//        Session session = sessionFactory.openSession();
//
//        Query query = session.createQuery("From User");
//        userList = query.list();
//        return userList;
//    }
//    // 1. configuring hibernate
//    //Configuration configuration = new Configuration().configure();
//    // 2. create sessionfactory
//    //SessionFactory sessionFactory = configuration.buildSessionFactory();
//    public void addMobileDetails(String mobileModel, String mobileProducer, String mobileProcessor, String mobileScreen, String mobileCamera, String mobileSound, String mobileMemory, String mobileOs, byte[] mobilePhoto, String mobileDescription) {
//        try {
//
//            // 1. configuring hibernate
//            Configuration configuration = new Configuration().configure();
//
//            // 2. create sessionfactory
//            SessionFactory sessionFactory = configuration.buildSessionFactory();
//
//            // 3. Get Session object
//            Session session = sessionFactory.openSession();
//
//            // 4. Starting Transaction
//            Transaction transaction = session.beginTransaction();
//            Mobile mobile = new Mobile();
//            mobile.setMobileModel(mobileModel);
//            mobile.setMobileProducer(mobileProducer);
//            mobile.setMobileProcessor(mobileProcessor);
//            mobile.setMobileScreen(mobileScreen);
//            mobile.setMobileCamera(mobileCamera);
//            mobile.setMobileSound(mobileSound);
//            mobile.setMobileMemory(mobileMemory);
//            mobile.setMobileOs(mobileOs);
//            mobile.setMobilePhoto(mobilePhoto);
//            mobile.setMobileDescription(mobileDescription);
//            session.save(mobile);
//            transaction.commit();
//            System.out.println("\n\n Details Added \n");
//
//        } catch (HibernateException e) {
//            System.out.println(e.getMessage());
//            System.out.println("error");
//        }
//
//    }
//
//    public static List<Mobile> showAllMobiles() {
//        List<Mobile> mobileList = new ArrayList();
//
//        // 1. configuring hibernate
//        Configuration configuration = new Configuration().configure();
//
//        // 2. create sessionfactory
//        SessionFactory sessionFactory = configuration.buildSessionFactory();
//
//        Session session = sessionFactory.openSession();
//
//        Query query = session.createQuery("From Mobile");
//        mobileList = query.list();
//        return mobileList;
//    }
}
