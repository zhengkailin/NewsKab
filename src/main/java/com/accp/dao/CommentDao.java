package com.accp.dao;

import com.accp.entity.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentDao {

    List<Comment> queryCommentList(@Param("newsId") int id);
}
