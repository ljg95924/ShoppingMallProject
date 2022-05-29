package com.bio11.product.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bio11.product.dto.BasketVO;
import com.bio11.product.service.BasketService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/basket/*")
@AllArgsConstructor
public class BasketController {
	@Autowired
	private BasketService service;
	
	@PostMapping("addBasket")
	@ResponseBody
	public String addBasket(BasketVO basket, HttpServletRequest request) {
		
		log.info("Controller Basket : " + basket);
		HttpSession session = request.getSession();
		/*// 로그인 체크
		 * MemberVO mvo = (MemberVO)session.getAttribute("member"); if(mvo == null) {
		 * return "5"; }
		 */
		
		// 카트 등록
		int result = service.addBasket(basket);
		
		return result + "";
	}
	

}
