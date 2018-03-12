package com.accp.biz;

import com.accp.entity.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentBiz {

    List<Comment> queryCommentList( int id);
}
