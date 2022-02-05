package com.heng.app.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Editor: hengBao
 * Wechat：zh17530588817
 * date: 2022/2/5/22:47
 * title：管理员类
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Admin {
    private String adminAccount;
    private String adminPwd;
    private String adminRealName;
    private Integer adminSex;
    private String adminPhone;
    private String adminAddress;
    private Integer active;
    private Integer adminLevel;
    private String adminImage;
}
