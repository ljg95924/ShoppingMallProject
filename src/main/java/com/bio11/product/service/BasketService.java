package com.bio11.product.service;

import java.util.List;

import com.bio11.product.dto.BasketVO;

public interface BasketService {
	public int addBasket(BasketVO basket);
	public int deleteBasket(int cart_id);
	public int modifyCount(BasketVO basket);
	public List<BasketVO> getBasketList(String user_id);
	public BasketVO checkBasket(BasketVO basket);
}
