package com.accp.biz.impl;

import com.accp.biz.UserBiz;
import com.accp.dao.UserDao;
import com.accp.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userBiz")
public class UserBizImpl implements UserBiz {
    @Resource
   private UserDao userDao ;
    public List<User> list(String username, String mima) {
        User user = new User();
        user.setUserName(username);
        user.setMiMa(mima);
        return userDao.list(user);
    }

    public User userById(User u) {
        return userDao.userById(u);
    }

    public boolean updateMa(String mima) {
        return userDao.updateMa(mima)>0;
    }

    public List<User> list(User user){
        return userDao.list(user);
    }
    public int add(User user){
        return userDao.add(user);
    }

    public boolean existsName(String username) {
        return userDao.existsName(username)>0;
    }

    public boolean updateUser(User u) {
            return userDao.updateUser(u) > 0;
    }

    public boolean deleteUser(int id) {
        return userDao.deleteUser(id)>0;
    }

}
