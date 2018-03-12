package com.accp.entity;

import java.sql.Date;

public class Announcement {

    private int id;
    private String title;
    private String createByName;
    private Date creationDate;
    private Date announcementDate;
    private String announcementName;
    private String content;
    private AnnouncementLevel announcementLevel;

    public AnnouncementLevel getAnnouncementLevel() {
        return announcementLevel;
    }

    public void setAnnouncementLevel(AnnouncementLevel announcementLevel) {
        this.announcementLevel = announcementLevel;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCreateByName() {
        return createByName;
    }

    public void setCreateByName(String createByName) {
        this.createByName = createByName;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public Date getAnnouncementDate() {
        return announcementDate;
    }

    public void setAnnouncementDate(Date announcementDate) {
        this.announcementDate = announcementDate;
    }

    public String getAnnouncementName() {
        return announcementName;
    }

    public void setAnnouncementName(String announcementName) {
        this.announcementName = announcementName;
    }
}
