<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/getBasketList.css" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 	<div>
		<h3 class="orderTitImg">
			<img src="https://cdn1.bio11.kr/data/skin/crex_new_1/images/order/orderCart_TitImg.jpg" alt="장바구니 단계 이미지">
		</h3>
			<form name="cart_form" id="cart_form" method="post" target="actionFrame" action="order">
				<input type="hidden" name="cart_version" value="2">
				<!-- 전체선택 및 선택삭제 ▽ -->
				<div class="cartSelBtn">
					<ul>
						<li>
							<div class="cartCheckbox">
								<input type="checkbox" name="allSelect" id="allSelect" class="btn_select_all" checked="checked"><span class="all_chcek_span">전체선택</span>
							</div>
						</li>
						<li>
							<button type="button" class="btn_select_del">선택삭제</button>
						</li>
					</ul>
				</div>
				<!-- 전체선택 및 선택삭제 ▲ -->
	
				<!-- 상품 정보 및 가격 ▽ -->
				<div class="cartInfo">
					<table>
						<colgroup>
							<col style="width:65px">
							<col style="width:75px">
							<col style="width:410px">
							<col style="width:161px">
							<col>
							<col style="width:105px">
						</colgroup>
						<tbody><tr>
							<th>선택</th>
							<th></th>
							<th>상품명/옵션선택</th>
							<th>수량</th>
							<th>판매가격</th>
							<th>구매선택</th>
						</tr>
	<!-- 상품이 있을 경우 ▽ -->
	<c:forEach var="item" items="${basketInfo}">
	<tr class="cart_info_tr">
		<td>
			<input type="checkbox" class="individual_cart_checkbox" checked="checked">
		</td>
		<td class="tdImg">
			<figure>
				<a href="../goods/view?no=237">
					<img src="https://cdn1.bio11.kr/data/goods/202205/31172731list2.png" style="width:100%;height:100%">
				</a>
			</figure>
		</td>
		<td class="tdTit">
			<p class="pTit">
				${item.product_name}
			</p>
		</td>
		<td class="tdAmount">
			<div class="tdNum" id="cart_option_ea_1272796">${item.product_quantity}</div>
			<div><button type="button" class="btn_ea_modify" id="1272796">변경</button></div>
		</td>
		<td>
			<p class="pPrice cart_option_price_1272796">${item.product_price}</p>
		</td>
		<td>
			<button type="button" value="1272796" class="btn_dirpurchase btn_one_buy">바로 구매</button>
			<button type="button" value="1272796" goods_seq="237" class="btn_one_del btn_dirDelete">삭제</button>
		</td>
	</tr>
	</c:forEach>
	<!-- 상품이 있을 경우 ▲ -->
	</tbody></table>
					<!-- 총 상품금액, 할인금액, 배송비 ▽ -->
					<div class="cartTotal">
						<ul>
							<li class="w345">
								<p class="titP">총 상품금액</p>
								<p class="priceP"><span class="total_goods_price"></span><span> 
								<fmt:formatNumber value="${totalPrice}" pattern="###,###,###"/> 원
								</span></p>
								<span class="finalTotalPrice_span"></span> 원
							</li>
						</ul>
					</div>
					<!-- 총 상품금액, 할인금액, 배송비 ▲ -->
	
			</div>
				<!-- 상품 정보 및 가격 ▲ -->
	
				<!-- 버튼 ▽ -->
				<div class="cartBtn">
					<button type="button" class="btn_selOrder btn_selected_order" onclick="gtag('event', '버튼클릭', {'event_category' : '주문하기', 'event_label' : '장바구니'});">선택 주문</button>
					<button type="button" class="btn_totOrder btn_all_order" onclick="gtag('event', '버튼클릭', {'event_category' : '주문하기', 'event_label' : '장바구니'});">전체 주문</button>
				</div>
				<!-- 버튼 ▲ -->
			</form>
	</div> --%>
	
<!-- 	<script>
		$(document).ready(function(){
			setTotalInfo();
		});
		
		$(".btn_select_all").on("change",function(){
			setTotalInfo($(".cart_info_tr"));
		})
		$(".btn_select_all").on("click", function(){

			/* 체크박스 체크/해제 */
			if($(".btn_select_all").prop("checked")){
				$(".btn_select_all").attr("checked", true);
			} else{
				$(".btn_select_all").attr("checked", false);
			}
			setTotalInfo($(".cart_info_td"));	
	});
		function setTotalInfo(){
			
			let totalPrice = 0;				// 총 가격

			let finalTotalPrice = 0; 		// 최종 가격(총 가격 + 배송비)

			
			$(".cart_info_tr").each(function(index, element){
				if($(element).find(".individual_cart_checkbox").is(":checked") === true){	//체크여부			
					// 총 가격
					totalPrice += parseInt($(element).find(".individual_totalPrice_input").val()) * parseInt($(element).find(".individual_bookCount_input").val());
				}		

			});
			$(".totalPrice_span").text(totalPrice.toLocaleString());
		}
	</script> -->
	<form name="cart_form" id="cart_form" method="post" target="actionFrame" action="order">
			<input type="hidden" name="cart_version" value="2">
			<!-- 전체선택 및 선택삭제 ▽ -->
			<div class="cartSelBtn">
				<ul>
					<li>
						<div class="cartCheckbox">
							<input type="checkbox" name="allSelect" id="allSelect" class="btn_select_all" checked="checked"><label for="allSelect">전체선택</label>
						</div>
					</li>
					<li>
						<button type="button" class="btn_select_del">선택삭제</button>
					</li>
				</ul>
			</div>
			<!-- 전체선택 및 선택삭제 ▲ -->

			<!-- 상품 정보 및 가격 ▽ -->
			<div class="cartInfo">
				<table>
					<colgroup>
						<col style="width:65px">
						<col style="width:75px">
						<col style="width:410px">
						<col style="width:161px">
						<col>
						<col style="width:105px">
					</colgroup>
					<tbody><tr>
						<th>선택</th>
						<th></th>
						<th>상품명/옵션선택</th>
						<th>수량</th>
						<th>판매가격</th>
						<th>구매선택</th>
					</tr>
				<!-- 상품이 있을 경우 ▽ -->
				<c:forEach var="item" items="${basketInfo}">
								<tr>
									<td>
										<input type="checkbox" name="cart_option_seq[]" class="cartChkBox" checked="checked">
									</td>
									<td class="tdImg">
										<figure>
											<a href="../goods/view?no=237">
												<img src="https://cdn1.bio11.kr/data/goods/202205/31172731list2.png" style="width:100%;height:100%">
											</a>
										</figure>
									</td>
									<td class="tdTit">
										<p class="pTit">
											${item.product_name}
										</p>
									</td>
									<td class="tdAmount">
										<div class="tdNum" id="cart_option_ea_1272796">${item.product_quantity}</div>
										<div><button type="button" class="btn_ea_modify" id="1272796">변경</button></div>
									</td>
									<td>
										<p class="pPrice cart_option_price_1272796">${item.product_price}</p>
									</td>
									<td>
										<button type="button" value="1272796" class="btn_dirpurchase btn_one_buy">바로 구매</button>
										<button type="button" value="1272796" goods_seq="237" class="btn_one_del btn_dirDelete">삭제</button>
									</td>
								</tr>
								</c:forEach>
<!-- 상품이 있을 경우 ▲ -->
				</tbody></table>
				<!-- 총 상품금액, 할인금액, 배송비 ▽ -->
				<div class="cartTotal">
					<ul>
						<li class="w345">
								<p class="titP">총 상품금액</p>
								<p class="priceP"><span class="total_goods_price"></span><span> 
								<fmt:formatNumber value="${totalPrice}" pattern="###,###,###"/> 원
						</li>
					</ul>
				</div>
				<!-- 총 상품금액, 할인금액, 배송비 ▲ -->

				<!-- 주문금액 ▽ -->
				<div class="cartMoney">
					<ul>
						<li>주문금액</li>
						<li>
							<span class="sp01 totalprice">158,000</span>
							<span class="sp02">원</span>
						</li>
					</ul>
				</div>
				<!-- 주문금액 ▲ -->
				<p class="cartTip">* 쿠폰, 적립금은 ‘주문/결제’ 페이지에서 확인 가능합니다.</p>
			</div>
			<!-- 상품 정보 및 가격 ▲ -->

			<!-- 버튼 ▽ -->
			<div class="cartBtn">
				<button type="button" class="btn_selOrder btn_selected_order" onclick="gtag('event', '버튼클릭', {'event_category' : '주문하기', 'event_label' : '장바구니'});">선택 주문</button>
				<button type="button" class="btn_totOrder btn_all_order" onclick="gtag('event', '버튼클릭', {'event_category' : '주문하기', 'event_label' : '장바구니'});">전체 주문</button>
			</div>
			<!-- 버튼 ▲ -->
		</form>
	
	<script>
	$(document).ready(function() {


	// // CheckBox 선택시 전체선택 해제
	$("input[name='cart_option_seq[]']").bind("click",function() {
		if ($('.cartChkBox:checked').length == $('.cartChkBox').length && $('.cartChkBox').length>0) {
			$(".btn_select_all").attr("checked",true);
		} else {
			$(".btn_select_all").attr('checked',false);
		}
		// cartCheckBox();
	});

	// 전체 선택
	$("form#cart_form .btn_select_all").click(function() {
		if( $(".btn_select_all").attr('checked') == 'checked' ) {
			$("input[name='cart_option_seq[]']").attr("checked",true);
		} else {
			$("input[name='cart_option_seq[]']").attr("checked",false);
		}
		// cartCheckBox();
	});

	// 단일삭제
	$(".btn_one_del").click(function() {
		var selected_order = $(this).val();

		openDialogConfirm('해당 상품을 삭제하시겠습니까?',400,140,function(){
			$("input[name='cart_option_seq[]']").attr("checked",false);
			$("input[name='cart_option_seq[]'][value='"+selected_order+"']").attr("checked", true);
			$("form#cart_form").attr("action","del");
			$("form#cart_form").attr("target","actionFrame");
			$("form#cart_form")[0].submit();
		})
	});

	// 바로구매
	$(".btn_one_buy").click(function() {
		var selected_order = $(this).val();
		$("input[name='cart_option_seq[]']").attr("checked",false);
		$("input[name='cart_option_seq[]'][value='"+selected_order+"']").attr("checked", true);

		$(".btn_selected_order").trigger("click");
	});

	// 선택삭제
	$(".btn_select_del").click(function() {
		var selected_order = '';
		$("input[name='cart_option_seq[]']").each(function(e, el) {
			if( $(el).attr('checked') == 'checked' )
			{
				selected_order += $(el).val() + ",";
			}
		});
		if(!selected_order){
			openDialogAlert('삭제할 상품을 선택해 주세요.','400','140');
			return false;
		}

		if (confirm("선택된 상품을 삭제하시겠습니까?")==true) {
			$("form#cart_form").attr("action","del");
			$("form#cart_form").attr("target","actionFrame");
			$("form#cart_form")[0].submit();
		}
	});

	// 수량변경
	$("button.btn_ea_modify").bind("click",function() {
		closeDialog("optional_changes_dialog");//diglog 초기화
		var url = "optional_changes?option_catalog=1&no="+$(this).attr("id");
		$.get(url, function(data) {
			$("div#optional_changes_dialog").html(data);
		});
		openDialog("선택한 상품의 주문내역", "optional_changes_dialog", {"width":500,"height":600});
	});

	// 선택 주문
	$(".btn_selected_order").bind("click",function() {
		var selected_order = '';
		$("input[name='cart_option_seq[]']").each(function(e, el) {
			if( $(el).attr('checked') == 'checked' ){
				selected_order += $(el).val() + ",";
			}
		});

		if(!selected_order){
			openDialogAlert('주문할 상품을 선택해 주세요.','400','140');
			return false;
		}

		$("form#cart_form").attr("action","addsettle?mode=choice");
		$("form#cart_form").attr("target","");
		$("form#cart_form")[0].submit();
		$("form#cart_form").attr("target","actionFrame");
	});

	// 전체 주문
	$(".btn_all_order").bind("click",function() {
		$("form#cart_form").attr("action","addsettle");
		$("form#cart_form").attr("target","actionFrame");
		$("form#cart_form")[0].submit();
	});
	</script>
</body>
</html>