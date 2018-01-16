package com.Service;

import com.Dao.UserDao;
import com.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    public int insert(User user){
        return userDao.insertUser(user);
    }

    public int delete(User user){
        return userDao.deleteUser(user);
    }

    public int update(User user){
        return userDao.updateUser(user);
    }

    public User select(User user){
        return userDao.selectUser(user);
    }

    public List<User> selectAll(){
        return userDao.selectAll();
    }
    
    // 通过用户名模糊查询
    public List<User> selectLikeUser(User user){    
        return userDao.selectLikeUser(user);
    }

	/* 
	 * 登录
	 */
	@Override
	public Boolean login(User user) {
		User u = userDao.selectUser(user);
		
		if(u!=null) {
			if(u.getPassword().equals(user.getPassword())) {
				return true;
			}
		}
		
		return false;
	}

	/* 
	 * 注册
	 */
	@Override
	public Boolean Register(User user) {
		User u = userDao.selectUser(user);
		
		if(u==null) {
			userDao.insertUser(user);
			return true;
		}
		
		return false;
	}
}
