package com.heng.app.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

/**
 * Editor: hengBao
 * Wechat：zh17530588817
 * date: 2022/2/5/22:53
 * title：用户订单表
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Order {
    private Integer id;
    private Integer userId;
    private Double total;
    private Integer status;
    private Timestamp createdTime;
    private Timestamp finishedTime;
    private Timestamp okTime;
}
