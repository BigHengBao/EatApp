package com.heng.app.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

/**
 * Editor: hengBao
 * Wechat：zh17530588817
 * date: 2022/2/5/23:00
 * title：用户收藏表
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Collection {
    private Integer id;
    private Integer pId;
    private Integer userId;
    private Timestamp addTime;
    private Integer active;
}
