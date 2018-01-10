package com.thoughtworks.mstorderservice.api;

import com.thoughtworks.mstorderservice.Repository.UserRepository;
import com.thoughtworks.mstorderservice.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/user")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserServiceImpl userService;

    @GetMapping("/{userName}/address")
    @ResponseStatus(HttpStatus.OK)
    public String getUserAddress(@PathVariable String userName) throws Exception {
        return userRepository.findByName(userName).getAddress();
    }

    @PatchMapping("/{userName}/{address}")
    @ResponseStatus(HttpStatus.OK)
    public void setUserAddress(@PathVariable String userName, @PathVariable String address) throws Exception {
        userService.setUserAddress(userName, address);
    }
}
