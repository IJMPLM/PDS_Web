package com.pds_web.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "students")
public class students {
    
    @Id
    @Column(name="StudentID")
    private int StudentID;
    
    @Column(name="Name")
    private String Name;
    
    @Column(name="Age")
    private int Age;
    
    @Column(name="ClassID")
    private int ClassID;
    
    @Column(name="Gender")
    private String Gender;

    public students(){
        
    }
    
    public students(int StudentID, String Name, int Age, int ClassID, String Gender){
        this.StudentID = StudentID;
        this.Name = Name;
        this.Age = Age;
        this.ClassID = ClassID;
        this.Gender = Gender;
    }
    
    public int getStudentID() {
        return StudentID;
    }

    public void setStudentID(int StudentID) {
        this.StudentID = StudentID;
    }

    public String getName() {
        return Name;
    }
    public void setName(String Name) {
        this.Name = Name;
    }

    public int getAge() {
        return Age;
    }
    public void setAge(int Age) {
        this.Age = Age;
    }

    public int getClassID() {
        return ClassID;
    }
    public void setClassID(int ClassID) {
        this.ClassID = ClassID;
    }

    public String getGender() {
        return Gender;
    }
    public void setGender(String Gender) {
        this.Gender = Gender;
    }
    
}
