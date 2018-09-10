package com.triofantastico.mobile_app.DAO;

import com.triofantastico.mobile_app.entity.User;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Hibernate;
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
public class UserDAO {

    public void addUserDetails(String userName, String password, String email) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();

        User user = new User();
        user.setUsername(userName);
        user.setPassword(password);
        user.setEmail(email);

        session.save(user);
        transaction.commit();
        session.close();

    }

    public void deleteUser(int userId) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();

        User clt = new User();

        clt = (User) session.load(User.class, userId);

        session.delete(clt);
        transaction.commit();
        session.close();

    }

    public void updateUser(User user) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();

        session.update(user);
        transaction.commit();
        session.close();

    }

    public User getId(int userId) {

        Session session = HibernateUtil.getSessionFactory().openSession();

        //Transaction transaction = session.beginTransaction();
        User clt = new User();

        clt = (User) session.load(User.class, userId);

        session.close();

        return clt;

    }

    public static List<User> getAllUsers() {
        List<User> userList = new ArrayList();

        Session session = HibernateUtil.getSessionFactory().openSession();
        //Transaction transaction = session.beginTransaction();

        Query query = session.createQuery("From User");
        userList = query.list();

        return userList;
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
}
