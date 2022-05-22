package com.bio11.product.mapper;

import java.util.List;

import com.bio11.product.dto.ProductVO;

public interface ProductMapper {
	//@Select("select * from tbl_board where bno > 0")
	public List<ProductVO> getList();
	public int update(ProductVO board);
	public ProductVO read(int product_id);
}
