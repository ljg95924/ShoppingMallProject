package com.bio11.product.dto;

import lombok.Data;

@Data
public class BasketVO {
	private int cart_id;
	private String user_id;
	private int product_id;
	private int product_quantity;
	
	private String product_name;
	private int product_price;
	private int totalPrice;
	
	@Override
	public String toString() {
		return "BasketVO [cart_id=" + cart_id + ", user_id=" + user_id + ", product_id=" + product_id
				+ ", product_quantity=" + product_quantity + ", product_name=" + product_name + ", product_price="
				+ product_price + ", totalPrice=" + totalPrice + "]";
	}
	
	
}
