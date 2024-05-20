package Lab1_TBD.repositories;

import Lab1_TBD.entities.UserVEntity;
import io.jsonwebtoken.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.crypto.SecretKey;
import java.util.Date;

@Repository
public class JwtMiddlewareRepositoryImp implements JwtMiddlewareRepository{
    private final SecretKey secretKey;

    @Autowired
    public JwtMiddlewareRepositoryImp(SecretKey secretKey){
        this.secretKey = secretKey;
    }

    @Override
    public String generateToken(UserVEntity userV){
        Date expiration_date = new Date(System.currentTimeMillis() + 14400000);
        return Jwts
                .builder()
                .claim("id", userV.getId())
                .claim("username", userV.getUsername())
                .issuedAt(new Date(System.currentTimeMillis()))
                .expiration(expiration_date)
                .signWith(secretKey)
                .compact();
    }

    @Override
    public Boolean validateToken(String token){
        try{
            Jws<Claims> jws = Jwts
                    .parser()
                    .verifyWith(secretKey)
                    .build()
                    .parseSignedClaims(token);
            return !jws.getPayload().getExpiration().before(new Date());
        }catch(ExpiredJwtException e){
            e.printStackTrace();
            return false;
        }catch(MalformedJwtException e){
            e.printStackTrace();
            return false;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public UserVEntity decodeJWT(String token){
        Claims claims = Jwts
                .parser()
                .verifyWith(secretKey)
                .build()
                .parseSignedClaims(token)
                .getPayload();
        Long id = claims.get("id", Long.class);
        String username = claims.get("username", String.class);

        UserVEntity userV = new UserVEntity();
        userV.setId(id);
        userV.setUsername(username);
        return userV;
    }

}
