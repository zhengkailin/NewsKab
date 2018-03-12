package com.accp.dao;

import com.accp.entity.Announcement;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AnnouncementDao {

    List<Announcement> announcementList();

    Announcement announcementById(Announcement announcement);

    List<Announcement> countAnnouncement(Announcement announcement);

    List<Announcement> listpage(@Param("announcement") Announcement announcement, @Param("rowCount") int rowCount, @Param("currentPageNo") int currentPageNo);

}
