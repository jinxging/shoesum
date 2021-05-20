<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file =  "/views/common/header.jsp" %>

<section class="cart_title" id="cart_title">
    <div class="cart_tit_title">장바구니</div>
</section>
<section class="cart_body" id="cart_body">
    <div class="cart_content">
        <table class="cart_table" id= "cart_table">
            <tr id="head_tr">
                <td><input type="checkbox" name="select_product" value=""></td>
                <td>이미지</td>
                <td>상품 정보</td>
                <td>판매가</td>
                <td>수량</td>
                <td>배송비</td>
                <td>합계</td>
                <td>선택</td>
            </tr>
            <tr id="cart_null">
                <td colspan="8" style="padding-left:0px;">
                    <ul>
                        <li>장바구니에 상품이 없습니다.</li>
                        <li><input type="button" value="쇼핑하러가기"></li>
                    </ul>
                </td>
            </tr>
            <tr class="cart_products">
                <td><input type="checkbox" name="select_products" value></td>
                <td><img src="<%=request.getContextPath() %>/images/logo_png.png" alt=""></td>
                <td>

                    <ul>
                        <li>제품 명 : 나이키 파란색 </li>
                        <li>사이즈 : 150</li>
                        <li>색상 : 빨간색</li>
                    </ul>

                </td>
                <td>1000000</td>
                <td>100</td>
                <td>무료</td>
                <td>1000000원</td>
                <td>

                    <ul>
                        <li><input type="button" name="btn_order" value="주문하기"
                                style="background-color : black; color : white"></li>
                        <li><input type="button" name="btn_delete" value="삭제" style="background-color : #CCCCCC">
                        </li>
                    </ul>

                </td>
            </tr>
            <tr class="cart_products">
                <td><input type="checkbox" name="select_products" value></td>
                <td><img src="<%=request.getContextPath() %>/images/logo_png.png" alt=""></td>
                <td>
                    <ul>
                        <li>제품 명 : 나이키 파란색 </li>
                        <li>사이즈 : 150</li>
                        <li>색상 : 빨간색</li>
                    </ul>
                </td>
                <td>1000000</td>
                <td>100</td>
                <td>무료</td>
                <td>1000000원</td>
                <td>
                    <ul>
                        <li><input type="button" name="btn_order" value="주문하기"
                                style="background-color : black;color:white"></li>
                        <li><input type="button" name="btn_delete" value="삭제" style="background-color : #CCCCCC">
                        </li>
                    </ul>
                </td>
            </tr>
        </table>
        <div id="order_price">
            <div id="price_head_wrap">
                <div>총상품가격</div>
                <div>배송비</div>
                <div>결제금액</div>
            </div>
            <div id="price_body_wrap">
                <div>1000</div>
                <div>+</div>
                <div>1000</div>
                <div>=</div>
                <div>1000</div>
            </div>
        </div>
        <div id="order_end">
            <button>주문하기</button>
        </div>
    </div>

</section>






<%@ include file =  "/views/common/footer.jsp" %>
	
	
