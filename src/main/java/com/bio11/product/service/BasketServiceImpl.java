package com.bio11.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bio11.product.dto.BasketVO;
import com.bio11.product.mapper.BasketMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BasketServiceImpl implements BasketService{
	//@Autowired
	private BasketMapper mapper;
	@Override
	public int addBasket(BasketVO basket) {
		// TODO Auto-generated method stub
		log.info("addBasket: " + basket);
		BasketVO checkBasket = mapper.checkBasket(basket);
		if(checkBasket != null) {
			return 2;
		}
		try {
			return mapper.addBasket(basket);
		}catch(Exception e) {
			return 0;			
		}
	}

	@Override
	public int deleteBasket(int cart_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyCount(BasketVO basket) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<BasketVO> getBasketList(String user_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BasketVO checkBasket(BasketVO basket) {
		// TODO Auto-generated method stub
		return null;
	}

}
