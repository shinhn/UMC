package com.umc.week5.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
public class GetUserRes {
    private int userIndex;
    private String ID;
    private String userName;
    private String password;
    private String email;
}
