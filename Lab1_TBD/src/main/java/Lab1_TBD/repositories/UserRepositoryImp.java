package Lab1_TBD.repositories;

import Lab1_TBD.entities.UserVEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

@Repository
public class UserRepositoryImp implements UserRepository {
    @Autowired
    private Sql2o sql2o;

    @Autowired
    private JwtMiddlewareRepositoryImp JWT;

    @Override
    public List<UserVEntity> getAllUsers(){
        try(Connection connection = sql2o.open()){
            return connection
                    .createQuery("SELECT * FROM \"userv\"")
                    .executeAndFetch(UserVEntity.class);
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
    public String createUser(UserVEntity userV){
        try(Connection connection = sql2o.open()){
            Integer insertedId = (Integer) connection
                    .createQuery("INSERT INTO \"userv\" (username, password) values (:username, :password)",
                            true)
                    .addParameter("username", userV.getUsername())
                    .addParameter("password", userV.getPassword())
                    .executeUpdate()
                    .getKey();
            userV.setId(insertedId.longValue());
            return JWT.generateToken(userV);
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }

    @Override
    public UserVEntity findByUsername(String username){
        try(Connection connection = sql2o.open()){
            return connection
                    .createQuery("SELECT * FROM \"userv\" WHERE username =:username")
                    .addParameter("username", username)
                    .executeAndFetch(UserVEntity.class).get(0);
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }

    @Override
    public String login(String username, String password){
        try{
            UserVEntity userV = findByUsername(username);
            if(userV.getPassword().compareTo(password) == 0){
                return JWT.generateToken(userV);
            }
            return "Contraseña incorrecta";
        }catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
}
