package Lab1_TBD.repositories;

import Lab1_TBD.entities.UserVEntity;

public interface JwtMiddlewareRepository {
    public String generateToken(UserVEntity userV);
    public Boolean validateToken(String token);

    public UserVEntity decodeJWT(String token);
}
