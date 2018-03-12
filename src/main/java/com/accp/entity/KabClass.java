package com.accp.entity;

public class KabClass {
    private int id;
    private String kabClassName;
    private ClassType kabClassType;
    private School school;
    private int status;

    public ClassType getKabClassType() {
        return kabClassType;
    }

    public void setKabClassType(ClassType kabClassType) {
        this.kabClassType = kabClassType;
    }

    public String getKabClassName() {

        return kabClassName;
    }

    public void setKabClassName(String kabClassName) {
        this.kabClassName = kabClassName;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }



    public School getSchool() {
        return school;
    }

    public void setSchool(School school) {
        this.school = school;
    }
}
