package com.Dao;

import com.Entity.User;

import java.util.List;

public interface UserDao {
    public int insertUser(User user);
    public int deleteUser(User user);
    public int updateUser(User user);
    public User selectUser(User user);
    public List<User> selectAll();
    public List<User> selectLikeUser(User user);
}
