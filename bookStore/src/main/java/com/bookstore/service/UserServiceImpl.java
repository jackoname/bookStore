package com.bookstore.service;

import com.bookstore.dao.UserMapper;
import com.bookstore.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService{
    private UserMapper userMapper;
    @Autowired
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }


    //调用dao层
    public User queryUser() {
        return userMapper.queryUser();
    }

    @Override
    public boolean newUser(User user) {
        return userMapper.newUser(user);
    }

    @Override
    public User loginUser(User user) {
    return userMapper.loginUser(user);
    }

    @Override
    public User findUser(User user) {
        return userMapper.findUser(user);
    }

    @Override
    public boolean updateUser(User user) {
        return userMapper.updateUser(user);
    }


}
