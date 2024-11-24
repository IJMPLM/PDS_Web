package com.pds_web.database;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.pds_web.entities.students;

public class CreateStudent {
    public static void main(String[] args){
        SessionFactory factory = new Configuration()
                                 .configure("hibernate.cfg.xml")
                                 .addAnnotatedClass(students.class)
                                 .buildSessionFactory();
        
        Session session = factory.getCurrentSession();
        
        try {
            students tempStudent = new students(201, "Quack", 13, 1, "Male");
            
            session.beginTransaction();
            session.save(tempStudent);
            session.getTransaction().commit();
            System.out.println("Successfully Added");
        } finally {
            factory.close();
        }
    }
}
