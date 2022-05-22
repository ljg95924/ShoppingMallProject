package com.bio11.product.dto;

import lombok.Data;

@Data
public class ProductVO {
	private Long product_id;
	private String product_name;
	private String product_type;
	private int product_stock;
	private int product_price;
	private String product_img;
}
