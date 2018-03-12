package com.accp.dao;

import com.accp.entity.News;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NewsDao {

    int modifyNews(News news);
    News querynewsById(News news);
    List<News> countNews();
    List<News> listpage(@Param("news") News news, @Param("rowCount") int rowCount, @Param("currentPageNo") int currentPageNo);
}
