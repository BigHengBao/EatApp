package com.heng.app.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Editor: hengBao
 * Wechat：zh17530588817
 * date: 2022/2/5/23:02
 * title：商品分类表
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProType {
    private Integer id;
    private String typeName;
    private Integer typeNumber;
    private String typeImage;
}
