package com.bio11.product.service;

import java.util.List;

import com.bio11.product.dto.ProductVO;

public interface ProductService {
	public boolean modify(ProductVO product);
	public List<ProductVO> getList();
	public ProductVO productDetail(int product_id);
}
