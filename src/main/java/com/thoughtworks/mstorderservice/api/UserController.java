package com.thoughtworks.mstorderservice.api;

import com.thoughtworks.mstorderservice.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/user")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/{userName}/address")
    @ResponseStatus(HttpStatus.OK)
    public String getUserAddress(@PathVariable String userName) throws Exception {
        return userRepository.findByName(userName).getAddress();
    }
}
