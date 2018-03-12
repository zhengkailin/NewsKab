package com.accp.entity;


import org.springframework.format.annotation.DateTimeFormat;

import javax.xml.bind.annotation.XmlRootElement;
import java.util.Date;

@XmlRootElement
public class User {
    private Integer id;                         /*用户ID*/
    private String userName;                 /*用户名*/
    private String miMa;                     /*密码*/
    private String realName;                /*真实姓名*/
    private Integer school;                  /*所在院校*/
    private String post;                    /*职务*/
    private String dept;                    /*所在部门*/
    private Integer teachTime;                 /*任教时间*/
    private String teachSubject;          /*任教科目*/
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;                  /*生日*/
    private String major;                   /*专业*/
    private String idCard;                  /*身份证号码*/
    private Integer joinClassId;           /*参加班级意向*/
    private String education;               /*学历*/
    private String phone;                   /*手机号*/
    private String tel;                     /*固定号码*/
    private String fax;                        /*传真号*/
    private String email;                   /*邮箱*/
    private String address;                 /*通讯地址*/
    private Integer securityQuestionId;       /*密保问题*/
    private String secretAnswerId;            /*密保答案*/
    private String managementExperience;    /*管理经验*/
    private Integer userTypeId;                   /*用户类型*/
    private Integer auditStatus;                /*审核状态*/
    private Integer userRoot;                    /*用户开班权限*/

    public User() {
    }

    public User(String userName, String miMa) {
        this.userName = userName;
        this.miMa = miMa;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getMiMa() {
        return miMa;
    }

    public void setMiMa(String miMa) {
        this.miMa = miMa;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public Integer getSchool() {
        return school;
    }

    public void setSchool(Integer school) {
        this.school = school;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public Integer getTeachTime() {
        return teachTime;
    }

    public void setTeachTime(Integer teachTime) {
        this.teachTime = teachTime;
    }

    public String getTeachSubject() {
        return teachSubject;
    }

    public void setTeachSubject(String teachSubject) {
        this.teachSubject = teachSubject;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public Integer getJoinClassId() {
        return joinClassId;
    }

    public void setJoinClassId(Integer joinClassId) {
        this.joinClassId = joinClassId;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getSecurityQuestionId() {
        return securityQuestionId;
    }

    public void setSecurityQuestionId(Integer securityQuestionId) {
        this.securityQuestionId = securityQuestionId;
    }

    public String getSecretAnswerId() {
        return secretAnswerId;
    }

    public void setSecretAnswerId(String secretAnswerId) {
        this.secretAnswerId = secretAnswerId;
    }

    public String getManagementExperience() {
        return managementExperience;
    }

    public void setManagementExperience(String managementExperience) {
        this.managementExperience = managementExperience;
    }

    public Integer getUserTypeId() {
        return userTypeId;
    }

    public void setUserTypeId(Integer userTypeId) {
        this.userTypeId = userTypeId;
    }

    public Integer getAuditStatus() {
        return auditStatus;
    }

    public void setAuditStatus(Integer auditStatus) {
        this.auditStatus = auditStatus;
    }

    public Integer getUserRoot() {
        return userRoot;
    }

    public void setUserRoot(Integer userRoot) {
        this.userRoot = userRoot;
    }
}
