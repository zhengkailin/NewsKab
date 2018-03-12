package com.accp.biz.impl;

import com.accp.biz.CommentBiz;
import com.accp.dao.CommentDao;
import com.accp.entity.Comment;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service("commentBiz")
public class CommentBizImpl implements CommentBiz {

    @Resource
    private CommentDao commentDao;

    public List<Comment> queryCommentList(int id) {
        return commentDao.queryCommentList(id);
    }
}
