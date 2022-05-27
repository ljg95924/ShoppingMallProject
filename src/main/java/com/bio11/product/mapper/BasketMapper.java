package com.bio11.product.mapper;

import java.util.List;

import com.bio11.product.dto.BasketVO;

public interface BasketMapper {
	public int addBasket(BasketVO basket);
	public int deleteBasket(int basketID);
	public int modifyCount(BasketVO cart);
	public List<BasketVO> getBasket(String memberId);
	public BasketVO checkBasket(BasketVO basket);
}
