package com.bio11.product.dto;

import lombok.Data;

@Data
public class BasketVO {
	private int cart_id;
	private String user_id;
	private int product_id;
	private int product_quantity;
}
