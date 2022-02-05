package com.heng.app.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Editor: hengBao
 * Wechat：zh17530588817
 * date: 2022/2/5/22:58
 * title：订单细节表
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDetail {
    private Integer orderId;
    private Integer pId;
    private Integer pNumber;
    private Double price;
    private Double total;
}
