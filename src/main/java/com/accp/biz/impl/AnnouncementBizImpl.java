package com.accp.biz.impl;

import com.accp.biz.AnnouncementBiz;
import com.accp.dao.AnnouncementDao;
import com.accp.entity.Announcement;
import com.accp.entity.Pager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("announcementBiz")
public class AnnouncementBizImpl implements AnnouncementBiz {

        @Resource
        private AnnouncementDao announcementDao;

        public List<Announcement> announcementList() {
        return announcementDao.announcementList();
    }

    public Announcement announcementById(Announcement announcement) {
        return  announcementDao.announcementById(announcement);
    }

    public Pager<Announcement> list(Announcement announcement, int rowCount, int currentPageNo) {
        Pager<Announcement>page=new Pager<Announcement>();
        page.setTotalCount(announcementDao.countAnnouncement(announcement).size());
        page.setCurrPageNo(currentPageNo);
        if(page.getTotalCount()==0){
            page.setCurrPageNo(0);
        }
        page.setTotalPageCount((page.getTotalCount()+rowCount-1)/rowCount);
        page.setDatas(announcementDao.listpage(announcement,rowCount,(currentPageNo-1)*rowCount));
        return page;
    }
}
