package com.accp.biz;

import com.accp.entity.News;
import com.accp.entity.Pager;

import java.util.List;

public interface NewsBiz {

    News querynewsById(News news);
    int modifyNews(News news);
    Pager<News> list(News news, int rowCount, int currentPageNo);
}
