package Lab1_TBD.controllers;

import Lab1_TBD.entities.UserVEntity;
import Lab1_TBD.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class UserController {
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/users")
    public List<UserVEntity> getAllUsers(){
        return userRepository.getAllUsers();
    }

    @PostMapping("/register")
    public String register(@RequestBody UserVEntity userV){
        return userRepository.createUser(userV);
    }

    @PostMapping("/login")
    public String login(@RequestBody UserVEntity userV){
        if(userRepository.findByUsername(userV.getUsername()) == null){
            return "BAD";
        }
        return userRepository.login(userV.getUsername(), userV.getPassword());
    }

}
