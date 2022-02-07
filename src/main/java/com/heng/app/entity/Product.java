package com.heng.app.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Editor: hengBao
 * Wechat：zh17530588817
 * date: 2022/2/5/22:50
 * title：商品表
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {
    private Integer id;
    private String pName;
    private Double price;
    private Double discount;
    private Integer size;
    private String taste;
    private String pImage;
    private String material;
}
