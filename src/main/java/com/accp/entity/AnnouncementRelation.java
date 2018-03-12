package com.accp.entity;

public class AnnouncementRelation {

    private int id;
    private int announcementMainId;
    private int announcementMainTitleId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAnnouncementMainId() {
        return announcementMainId;
    }

    public void setAnnouncementMainId(int announcementMainId) {
        this.announcementMainId = announcementMainId;
    }

    public int getAnnouncementMainTitleId() {
        return announcementMainTitleId;
    }

    public void setAnnouncementMainTitleId(int announcementMainTitleId) {
        this.announcementMainTitleId = announcementMainTitleId;
    }
}
