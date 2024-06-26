package Lab1_TBD.repositories;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.deser.std.DateDeserializers;
import com.fasterxml.jackson.databind.module.SimpleModule;
import io.jsonwebtoken.Jwts;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.sql2o.Sql2o;

import javax.crypto.SecretKey;
import java.text.SimpleDateFormat;
import java.util.Date;

@Configuration
public class DatabaseContext {
    @Bean
    public Sql2o sql2o() {
        return new Sql2o("jdbc:postgresql://localhost:5432/lab2", "postgres", "1234");
    }

    @Bean
    public SecretKey secretKey() {
        return Jwts.SIG.HS256.key().build();
    }

    @Bean
    public ObjectMapper objectMapper() {
        ObjectMapper objectMapper = new ObjectMapper();

        // Configure the date format for deserialization globally
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        objectMapper.setDateFormat(dateFormat);

        // If needed, you can configure other ObjectMapper settings here
        objectMapper.configure(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS, false);

        // Register a custom date deserializer if needed
        SimpleModule module = new SimpleModule();
        module.addDeserializer(Date.class, new DateDeserializers.DateDeserializer());
        objectMapper.registerModule(module);

        return objectMapper;
    }
}
