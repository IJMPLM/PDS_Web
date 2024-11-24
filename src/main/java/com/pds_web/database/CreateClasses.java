package com.pds_web.database;

import com.pds_web.entities.classes;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.pds_web.entities.classes;

public class CreateClasses {
    public static void main(String[] args){
        SessionFactory factory = new Configuration()
                                 .configure("hibernate.cfg.xml")
                                 .addAnnotatedClass(classes.class)
                                 .buildSessionFactory();
        
        Session session = factory.getCurrentSession();
        
        try {
            classes tempClass = new classes(1, "");
            
            session.beginTransaction();
            session.save(tempClass);
            session.getTransaction().commit();
            
        } finally {
            factory.close();
        }
    }
}
