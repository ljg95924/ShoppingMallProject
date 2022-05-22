package com.bio11.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bio11.product.dto.ProductVO;
import com.bio11.product.mapper.ProductMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService{
//	@Setter(onMethod_= @Autowired)
	private ProductMapper mapper;

	@Override
	public List<ProductVO> getList() {
		// TODO Auto-generated method stub
		log.info("getList....");
		return mapper.getList();
	}

	@Override
	public boolean modify(ProductVO board) {
		// TODO Auto-generated method stub
		log.info("modify..."+board);
		return mapper.update(board)==1;
	}

	@Override
	public ProductVO productDetail(int product_id) {
		// TODO Auto-generated method stub
		log.info("productDetail..." + product_id);
		return mapper.read(product_id);
	}
	
}
