package com.niit.trendystore.DAO;

import java.io.IOException;
import java.util.List;

import com.niit.trendystore.model.User;

public interface UserDAO {
	
   void addUser(User user);
	
	public void saveOrUpdate(User user);

    User getUserById(int user_id);

    List<User> getAllUsers();

    User getUserByUsername(String username);
    
    public void deleteUser(User user);
    
    public User validate(int user_id) throws IOException;

}
