package com.heng.app.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Editor: hengBao
 * Wechat：zh17530588817
 * date: 2022/2/5/22:35
 * title: 用户类
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
    private Integer id;
    private String userAccount;
    private String userPwd;
    private String userRealName;
    private Integer userSex;
    private String userPhone;
    private String userAddress;
    private Integer active;
    private Integer userLevel;
    private String userImage;
    private String userWrite;
}
