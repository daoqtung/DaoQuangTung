package com.example.sd_93.service.impl;

import com.example.sd_93.model.User;

import java.util.UUID;

public interface UserServiceImpl {

    User findByEmail(String email);

    void update(UUID id, User update);


}
