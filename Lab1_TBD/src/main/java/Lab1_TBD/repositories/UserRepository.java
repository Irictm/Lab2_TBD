package Lab1_TBD.repositories;

import Lab1_TBD.entities.UserVEntity;

import java.util.List;

public interface UserRepository {
    public List<UserVEntity> getAllUsers();
    public String createUser(UserVEntity userV);
    public UserVEntity findByUsername(String username);
    public String login(String username, String password);
}
