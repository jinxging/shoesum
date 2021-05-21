<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>

	<section>
		<div id="pd_img">
		    <img src="<%=request.getContextPath() %>/images/product/pd01.png" alt="" class="bigPic">
		    <img src="<%=request.getContextPath() %>/images/product/pd01.png" alt="" class="smallPics">
		    <img src="<%=request.getContextPath() %>/images/product/pd01_2.png" alt="" class="smallPics">
		    <img src="<%=request.getContextPath() %>/images/product/pd01_3.png" alt="" class="smallPics">
		    <img src="<%=request.getContextPath() %>/images/product/pd01_4.png" alt="" class="smallPics">
		</div>
		<div id="pd_info">
		    <div class="pd_title">
		        <span>베이직 스니커즈 화이트</span>
		        <span>♥ 7</span>
		    </div>
		    <div class="pd_choice">
		        <p>구매정보</p>
		        <p>사이즈</p>
		        <select name="size" id="size">
		            <option value="">230</option>
		            <option value="">235</option>
		            <option value="">240</option>
		            <option value="">245</option>
		            <option value="">250</option>
		            <option value="">255</option>
		            <option value="">260</option>
		            <option value="">265</option>
		            <option value="">270</option>
		            <option value="">275</option>
		            <option value="">280</option>
		        </select>
		        <p>색상</p>
		        <select name="color" id="color">
		            <option value="">빨간색</option>
		            <option value="">검정색</option>
		            <option value="">하얀색</option>
		            <option value="">노랑색</option>
		            <option value="">파랑색</option>
		        </select>
		        <p>수량</p>
		        <div class="count_box">
		            <button type="button" id="decreaseQuantity">-</button>
                    <input type="text" name="pop_out" value="1" readonly="readonly" style="text-align:center;"/>
                    <button type ="button" id="increaseQuantity">+</button>		        
                </div>
		  	</div>
	        <div class="pd_price">
	            <p>총 결제금액</p>
				<p class="total_price">￦　4000</p>
                <!-- 상품 금액 불러올 때 아래 스크립트에서도 request값으로 넣으면 ￦표시 제외하고 parseInt 처리 가능하지않을까....? -->
	        </div>
		        <button>구매하기</button>
		        <button>장바구니</button>
	    </div>
	    <div id="pd_review">
	        <p>구매후기</p>
	        <div class="review_box">
	            <p>★★★★☆</p>
	            <div>
	                신발자체는 이뻐요.<br>
	                근데 앞에 많이 남네요ㅠㅠ
	            </div>
	            <p>user_id　|　2021-05-15</p>
	        </div>
	        <div class="review_box">
	            <p>★★★★☆</p>
	            <div>
	                신발자체는 이뻐요.<br>
	                근데 앞에 많이 남네요ㅠㅠ
	            </div>
	            <p>user_id　|　2021-05-15</p>
	        </div>
	        <div class="review_write">
	            <p>상품만족도　☆☆☆☆☆</p>
	            <textarea name="" id="" cols="110" rows="5" placeholder="  상품에 대한 리뷰를 남겨주세요."></textarea>
	            <button>등록</button>
	        </div>
	    </div>
	    <div id="pd_recommend">
	        <p>이 상품은 어떠신가요?</p>
	        <div class="product">
	            <div>
	                <a href=""><img src="<%=request.getContextPath() %>/images/product/shose.png" alt=""></a>
	                <p>[슈썸]상품이름<br>가격</p>
	            </div>
	            <div>
	                <a href=""><img src="<%=request.getContextPath() %>/images/product/shose.png" alt=""></a>
	                <p>[슈썸]상품이름<br>가격</p>
	            </div>
	            <div>
	                <a href=""><img src="<%=request.getContextPath() %>/images/product/shose.png" alt=""></a>
	                <p>[슈썸]상품이름<br>가격</p>
	            </div>
	            <div>
	                <a href=""><img src="<%=request.getContextPath() %>/images/product/shose.png" alt=""></a>
	                <p>[슈썸]상품이름<br>가격</p>
	            </div>
	            <div>
	                <a href=""><img src="<%=request.getContextPath() %>/images/product/shose.png" alt=""></a>
	                <p>[슈썸]상품이름<br>가격</p>
	            </div>
	        </div>
	    </div>
	</section>
	
	<script>
        $(function(){
            
            // 마우스 오버시 이미지 변경 스크립트
            var smallPics=document.querySelectorAll(".smallPics");
            for(var i=0;i<smallPics.length;i++) {
                smallPics[i].addEventListener("mouseover",changepic);
            };
            function changepic(e) {
                var bigPic=document.querySelector(".bigPic");
                var smallPicAttribute = this.getAttribute("src");
                bigPic.setAttribute("src",smallPicAttribute);
            };
            
         // 수량+총금액 증가,감소 버튼  스크립트
            $('#decreaseQuantity').click(function(e){
                e.preventDefault();
                var stat = $('input[name=pop_out]').val();
                var num = parseInt(stat,10);
                num--;
                
                if(num<=0){
                    alert('최소 주문수량은 1개 이상입니다.');
                    num =1;
                };
                
                $('input[name=pop_out]').val(num);
                
                const basic_amount = parseInt('40000');
                var show_total_amount = basic_amount * num;
                $('.total_price').html('￦　'+show_total_amount);
                
            });

            $('#increaseQuantity').click(function(e){
                e.preventDefault();
                var stat = $('input[name=pop_out]').val();
                var num = parseInt(stat,10);
                num++;
                
                if(num>100){
                    alert('주문 가능한 최대 수량은 100개 입니다.');
                    num=100;
                }
                
                $('input[name=pop_out]').val(num);
                
                const basic_amount = parseInt('40000');
                var show_total_amount = parseInt(basic_amount) * num;
                $('.total_price').html('￦　'+show_total_amount);
            });
        })
    </script>

<%@ include file="/views/common/footer.jsp" %>