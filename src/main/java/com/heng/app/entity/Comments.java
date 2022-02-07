package com.heng.app.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

/**
 * Editor: hengBao
 * Wechat：zh17530588817
 * date: 2022/2/5/22:56
 * title：商品评论表
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Comments {
    private Integer id;
    private Integer userId;
    private String content;
    private Timestamp addTime;
    private Integer active;
    private Integer pId;
}
