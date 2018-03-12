package com.accp.biz;

import com.accp.entity.Announcement;
import com.accp.entity.Pager;

import java.util.List;

public interface AnnouncementBiz {

    List<Announcement> announcementList();

    Announcement announcementById(Announcement announcement);

    Pager<Announcement> list(Announcement announcement, int rowCount, int currentPageNo);
}
