package com.pds_web.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name = "classes")
public class classes {
    
    @Id
    @Column(name="ClassID")
    private int ClassID;
    
    @Column(name="ClassName")
    private String ClassName;
    
    public classes() {    
    
    }
    
    public classes(int ClassID, String ClassName){
        this.ClassID = ClassID;
        this.ClassName = ClassName;
    }

    // getters n setters
    public int getClassID() {
        return ClassID;
    }
    public void setClassID(int ClassID) {
        this.ClassID = ClassID;
    }

    public String getClassName() {
        return ClassName;
    }
    public void setClassName(String ClassName) {
        this.ClassName = ClassName;
    }
    
    public void getdatas(){
        System.out.printf("ClassID: %d, ClassName: %s", this.ClassID, this.ClassName);
    }
}
