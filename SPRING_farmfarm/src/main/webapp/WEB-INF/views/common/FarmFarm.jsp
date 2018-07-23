<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<html>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<!-- 외부스타일 시트 적용 -->
	
<!--스크립트 공통부분  -->
  <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script src="resources/js/bootstrap.js"></script>
<body>

<!-- 헤더시작 -->
<header>
	<%@include file="../Header.jsp" %>
</header>
<!-- 헤더끝 --> 
 <!--슬라이드메뉴 시작  -->

	<h2></h2>
	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
	  <ol class="carousel-indicators">
	    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	    <li data-target="#myCarousel" data-slide-to="1" class=""></li>
	    <li data-target="#myCarousel" data-slide-to="2" class=""></li>
	  </ol>
	  <div class="carousel-inner" role="listbox" >
	    <div class="item active">
	      <img src="resources/images/farm01.PNG" style="margin:0 auto;">
	    </div>
	    <div class="item">
	      <img src="resources/images/farm02.PNG" style="margin:0 auto;">
	    </div>
	    <div class="item">
	      <img src="resources/images/farm03.PNG" style="margin:0 auto;">
	    </div>
	  </div>
	 
	</div>

	<hr>
	

 
  <!--슬라이드 끝  -->
  <!--에디터 쵸이스 시작  --> 
<div class="section section-bg-gray layout-sm">
    <div class="container">
        <div class="section-header center">
            <h1 class="center section-title" align="center">에디터 쵸이스</h1>
        </div>
        <div class="row">
                      <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                        <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
                            <div class="card-image">
                                <div class="card-image-bg" >
                                    <img src="resources/images/edit01.PNG" style="width:100%;"><!-- areafix -->
                                </div>
                                <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2765'">
                                  
                                </div>
                                <div class="heart-circle">
                                    <i class="fa fa-heart icon-isHeartOn"></i>
                                </div>
                            </div>
                            <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2765'">
                                <div class="card-title grey-text text-darken-4 ellipsis2">
                                    푸짐하게 드세요. 해수 보라성게알
                                </div>
                            </div>
                                                            <div class="card-action">
                                    <h5 class="farmer-name activator"><span>한종수</span> 농부의 펀드</h5>
                                    <div class="funding-graph">
                                        <div class="graph-bar" style="width:100%;"></div>
                                    </div>
                                    <div class="funding-status">
                                        <h5 class="left"><strong>3,718,000원</strong><br>모임 <small style="color: #1ab394; font-weight: bold;">372%</small></h5>
                                        <h5 class="left"><strong>104명</strong><br>참여</h5>
                                                                                                                                    <h5 class="left" style="margin-right:0;"><strong>1일</strong><br>남음</h5>
                                                                                                                        </div>
                                </div>
                         
                        </div>
                    </div>
                     <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                        <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
                            <div class="card-image">
                                <div class="card-image-bg" >
                                    <img src="resources/images/edit02.PNG" style="width:100%;"><!-- areafix -->
                                </div>
                                <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2797'">
                                    
                                </div>
                                <div class="heart-circle">
                                    <i class="fa fa-heart icon-isHeartOn"></i>
                                </div>
                            </div>
                            <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2797'">
                                <div class="card-title grey-text text-darken-4 ellipsis2">
                                    무더위와 함께할 여름 간식, 복숭아 모음전
                                </div>
                            </div>
                                                            <div class="card-action">
                                    <h5 class="farmer-name activator"><span>이재권, 정승옥</span> 농부의 펀드</h5>
                                    <div class="funding-graph">
                                        <div class="graph-bar" style="width:100%;"></div>
                                    </div>
                                    <div class="funding-status">
                                        <h5 class="left"><strong>7,900,000원</strong><br>모임 <small style="color: #1ab394; font-weight: bold;">790%</small></h5>
                                        <h5 class="left"><strong>105명</strong><br>참여</h5>
                                                                                                                                    <h5 class="left" style="margin-right:0;"><strong>58일</strong><br>남음</h5>
                                                                                                                        </div>
                                </div>
                         
                        </div>
                    </div>
                     <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                        <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
                            <div class="card-image">
                                <div class="card-image-bg" >
                                    <img src="resources/images/edit03.PNG" style="width:100%;"><!-- areafix -->
                                </div>
                                <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2748'">
                                  
                                </div>
                                <div class="heart-circle">
                                    <i class="fa fa-heart icon-isHeartOn"></i>
                                </div>
                            </div>
                            <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2748'">
                                <div class="card-title grey-text text-darken-4 ellipsis2">
                                    그때그때 가장 맛있는 품종으로. 천도복숭아
                                </div>
                            </div>
                             <div class="card-action">
                                    <h5 class="farmer-name activator"><span>서숙희</span> 농부의 펀드</h5>
                                    <div class="funding-graph">
                                        <div class="graph-bar" style="width:100%;"></div>
                                    </div>
                                    <div class="funding-status">
                                        <h5 class="left"><strong>6,352,900원</strong><br>모임 <small style="color: #1ab394; font-weight: bold;">142%</small></h5>
                                        <h5 class="left"><strong>250명</strong><br>참여</h5>
                                                                                                                                    <h5 class="left" style="margin-right:0;"><strong>11일</strong><br>남음</h5>
                                                                                                                        </div>
                                </div>
                          
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                        <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
                            <div class="card-image">
                                <div class="card-image-bg" >
                                    <img src="resources/images/edit04.PNG" style="width:100%;"><!-- areafix -->
                                </div>
                                <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2774'">
                                   
                                </div>
                                <div class="heart-circle">
                                    <i class="fa fa-heart icon-isHeartOn"></i>
                                </div>
                            </div>
                            <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2774'">
                                <div class="card-title grey-text text-darken-4 ellipsis2">
                                    200명이 지키는 부엉이 남매의 놀이터, 무농약 수박
                                </div>
                            </div>
                                                            <div class="card-action">
                                    <h5 class="farmer-name activator"><span>이을숙</span> 농부의 펀드</h5>
                                    <div class="funding-graph">
                                        <div class="graph-bar" style="width:28%;"></div>
                                    </div>
                                    <div class="funding-status">
                                        <h5 class="left"><strong>825,600원</strong><br>모임 <small style="color: #1ab394; font-weight: bold;">28%</small></h5>
                                        <h5 class="left"><strong>42명</strong><br>참여</h5>
                                                                                                                                    <h5 class="left" style="margin-right:0;"><strong>11일</strong><br>남음</h5>
                                                                                                                        </div>
                                </div>
                          
                        </div>
                    </div>
            </div>
    </div>
</div>
 <!--에디터 쵸이스 끝  --> 
<!--이달의 농부  -->
<div class="section layout-sm">
    <div class="container">
    	<div style="width: 100%; height: 332px; background-size: cover; margin-left:35px;">
	        <a href="https://farmingfund.co.kr/event/2018_farmers_of_the_month/5949">
            	<img src="resources/images/weekfarmer.PNG">
        	</a>
       	</div>
    </div>
</div>
<!--이달의 농부  -->    

<!--즉시 구매 가능한 상품 -->
<div class="section section-bg-white layout-sm" style="padding-top: 0px; padding-bottom: 0px;">
    <div class="container">
        <div class="section-header center">
            <h1 class="center section-title" align="center">바로 구매가 가능한:경매상품</h1>
        </div>
        <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
            <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false" style="overflow: hidden;">
                <div class="card-image">
                    <div class="card-image-bg" onclick="location.href='https://farmingfund.co.kr/products/direct/show/2673'">
                        <img src="resources/images/buynow1.PNG" style="width:100%;"><!-- areafix -->
                    </div>
                    <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2673'">
                       
                    </div>
                    <div class="heart-circle">
                        <i class="fa fa-heart icon-isHeartOn"></i>
                    </div>
                </div>
                <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2673'">
                    <div class="card-title grey-text text-darken-4 ellipsis2">
                        [농펀상회] 우리 가족 함께 먹기에 딱!  무항생제 쌈겹살&amp; 소세지 세트
                    </div>
                </div>
                <div class="card-action">
                    <h5 class="farmer-name activator"><span>정상진</span> 농부의 펀드</h5>
                    <div class="funding-status">
                        <h3 class="left"><strong>9,500원부터</strong></h3>
                    </div>
                </div>
            </div>
        </div>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
            <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false" style="overflow: hidden;">
                <div class="card-image">
                    <div class="card-image-bg" onclick="location.href='https://farmingfund.co.kr/products/direct/show/2639'">
                        <img src="resources/images/buynow2.PNG" style="width:100%;"><!-- areafix -->
                    </div>
                    <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2639'">
                        
                    </div>
                    <div class="heart-circle">
                        <i class="fa fa-heart icon-isHeartOn"></i>
                    </div>
                </div>
                <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2639'">
                    <div class="card-title grey-text text-darken-4 ellipsis2">
                        [농펀상회] 동해의 신선함이 그대로, 백골뱅이
                    </div>
                </div>
                <div class="card-action">
                    <h5 class="farmer-name activator"><span>임창목</span> 농부의 펀드</h5>
                    <div class="funding-status">
                        <h3 class="left"><strong>15,800원부터</strong></h3>
                    </div>
                </div>
            </div>
        </div>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
            <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false" style="overflow: hidden;">
                <div class="card-image">
                    <div class="card-image-bg" onclick="location.href='https://farmingfund.co.kr/products/direct/show/2584'">
                        <img src="resources/images/buynow3.PNG" style="width:100%;"><!-- areafix -->
                    </div>
                    <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2584'">
                       
                    </div>
                    <div class="heart-circle">
                        <i class="fa fa-heart icon-isHeartOn"></i>
                    </div>
                </div>
                <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2584'">
                    <div class="card-title grey-text text-darken-4 ellipsis2">
                        [농펀상회] 기다리지 말고 구워요. 올계 닭꼬치
                    </div>
                </div>
                <div class="card-action">
                    <h5 class="farmer-name activator"><span>문태연</span> 농부의 펀드</h5>
                    <div class="funding-status">
                        <h3 class="left"><strong>18,700원부터</strong></h3>
                    </div>
                </div>
                
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
            <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false" style="overflow: hidden;">
                <div class="card-image">
                    <div class="card-image-bg" onclick="location.href='https://farmingfund.co.kr/products/direct/show/1335'">
                        <img src="resources/images/buynow4.PNG" style="width:100%;"><!-- areafix -->
                    </div>
                    <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/1335'">
                      
                    </div>
                    <div class="heart-circle">
                        <i class="fa fa-heart icon-isHeartOn"></i>
                    </div>
                </div>
                <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/1335'">
                    <div class="card-title grey-text text-darken-4 ellipsis2">
                        [농펀상회] 춘천 엄마들이 만들어 보내주는 참닭갈비
                    </div>
                </div>
                <div class="card-action">
                    <h5 class="farmer-name activator"><span>김민희</span> 농부의 펀드</h5>
                    <div class="funding-status">
                        <h3 class="left"><strong>18,000원부터</strong></h3>
                    </div>
                </div>
            </div>
        </div>

     </div>
    </div>
</div>
<!--즉시구매 가능한 상품  -->

<!--이주의 신규펀드  -->
<div class="section section-bg-white layout-sm" style="padding-top: 0px;">
    <div class="container">
        <div class="section-header center">
            <h1 class="center section-title">이주의 신규 펀드</h1>
        </div>
        <div class="row">
                  <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                  <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
                      <div class="card-image">
                          <div class="card-image-bg"  onclick="location.href='https://farmingfund.co.kr/products/2826'">
                              <img src="resources/images/w1.PNG" style="width:100%;"><!-- areafix -->
                          </div>
                          <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2826'">
                             
                          </div>
                          <div class="heart-circle">
                              <i class="fa fa-heart icon-isHeartOn"></i>
                          </div>
                      </div>
                      <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2826'">
                          <div class="card-title grey-text text-darken-4 ellipsis2">
                              [한정수량 2차오픈] 이무진농부의 유기재배 마늘
                          </div>
                      </div>
                       <div class="card-action">
                          <h5 class="farmer-name activator"><span>이무진</span> 농부의 펀드</h5>
                          <div class="funding-graph">
                              <div class="graph-bar" style="width:16%;"></div>
                          </div>
                          <div class="funding-status">
                              <h5 class="left"><strong>158,800원</strong><br>모임 <small style="color: #1ab394; font-weight: bold;">16%</small></h5>
                              <h5 class="left"><strong>4명</strong><br>참여</h5>
                             <h5 class="left" style="margin-right:0;"><strong>9일</strong><br>남음</h5>
                        </div>
                      </div>
                  </div>
              </div>
              <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                 <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
                     <div class="card-image">
                         <div class="card-image-bg" onclick="location.href='https://farmingfund.co.kr/products/2825'">
                             <img src="resources/images/w2.PNG" style="width:100%;"><!-- areafix -->
                         </div>
                         <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2825'">
                           
                         </div>
                         <div class="heart-circle">
                             <i class="fa fa-heart icon-isHeartOn"></i>
                         </div>
                     </div>
                     <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2825'">
                         <div class="card-title grey-text text-darken-4 ellipsis2">
                             	걱정없이 드세요. 새롭게 도전하는 청년 농부의 흰다리새우
                         </div>
                     </div>
                      <div class="card-action">
                         <h5 class="farmer-name activator"><span>천재민</span> 농부의 펀드</h5>
                         <div class="funding-graph">
                             <div class="graph-bar" style="width:50%;"></div>
                         </div>
                         <div class="funding-status">
                             <h5 class="left"><strong>493,500원</strong><br>모임 <small style="color: #1ab394; font-weight: bold;">50%</small></h5>
                             <h5 class="left"><strong>11명</strong><br>참여</h5>
                             <h5 class="left" style="margin-right:0;"><strong>46일</strong><br>남음</h5>
                       </div>
                     </div>
                 </div>
             </div>
               <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                  <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
                      <div class="card-image">
                          <div class="card-image-bg" onclick="location.href='https://farmingfund.co.kr/products/2819'">
                              <img src="resources/images/w3.PNG" style="width:100%;"><!-- areafix -->
                          </div>
                          <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2819'">
                            
                          </div>
                          <div class="heart-circle">
                              <i class="fa fa-heart icon-isHeartOn"></i>
                          </div>
                      </div>
                      <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2819'">
                          <div class="card-title grey-text text-darken-4 ellipsis2">
                              (2차오픈) 꽉 채워 자랐어요. 무농약 완숙 토마토
                          </div>
                      </div>
                      <div class="card-action">
                          <h5 class="farmer-name activator"><span>이상호</span> 농부의 펀드</h5>
                          <div class="funding-graph">
                              <div class="graph-bar" style="width:27%;"></div>
                          </div>
                          <div class="funding-status">
                              <h5 class="left"><strong>265,000원</strong><br>모임 <small style="color: #1ab394; font-weight: bold;">27%</small></h5>
                              <h5 class="left"><strong>11명</strong><br>참여</h5>
                              <h5 class="left" style="margin-right:0;"><strong>20일</strong><br>남음</h5>
                        </div>
                      </div>
                  </div>
              </div>
              <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                 <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
                     <div class="card-image">
                         <div class="card-image-bg" onclick="location.href='https://farmingfund.co.kr/products/2814'">
                             <img src="resources/images/w4.PNG" style="width:100%;"><!-- areafix -->
                         </div>
                         <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2814'">
                            
                         </div>
                         <div class="heart-circle">
                             <i class="fa fa-heart icon-isHeartOn"></i>
                         </div>
                     </div>
                     <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2814'">
                         <div class="card-title grey-text text-darken-4 ellipsis2">
                             마셔요. 여름을 호로록. 국산 콩국
                         </div>
                     </div>
                      <div class="card-action">
                         <h5 class="farmer-name activator"><span>미가풍경</span> 농부의 펀드</h5>
                         <div class="funding-graph">
                             <div class="graph-bar" style="width:35%;"></div>
                         </div>
                         <div class="funding-status">
                             <h5 class="left"><strong>171,000원</strong><br>모임 <small style="color: #1ab394; font-weight: bold;">35%</small></h5>
                             <h5 class="left"><strong>8명</strong><br>참여</h5>
                             <h5 class="left" style="margin-right:0;"><strong>20일</strong><br>남음</h5>
                        </div>
                     </div>
                 </div>
             </div>
              <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                 <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
                     <div class="card-image">
                         <div class="card-image-bg" onclick="location.href='https://farmingfund.co.kr/products/2816'">
                             <img src="resources/images/w5.PNG" style="width:100%;"><!-- areafix -->
                         </div>
                         <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2816'">
                            
                         </div>
                         <div class="heart-circle">
                             <i class="fa fa-heart icon-isHeartOn"></i>
                         </div>
                     </div>
                     <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2816'">
                         <div class="card-title grey-text text-darken-4 ellipsis2">
                             진도의 따사로운 햇살 그대로 받은 미니 밤호박
                         </div>
                     </div>
                       <div class="card-action">
                         <h5 class="farmer-name activator"><span>곽그루</span> 농부의 펀드</h5>
                         <div class="funding-graph">
                             <div class="graph-bar" style="width:95%;"></div>
                         </div>
                         <div class="funding-status">
                             <h5 class="left"><strong>941,000원</strong><br>모임 <small style="color: #1ab394; font-weight: bold;">95%</small></h5>
                             <h5 class="left"><strong>40명</strong><br>참여</h5>
                             <h5 class="left" style="margin-right:0;"><strong>18일</strong><br>남음</h5>
                       </div>
                     </div>
                 </div>
             </div>
             <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
                    <div class="card-image">
                        <div class="card-image-bg" onclick="location.href='https://farmingfund.co.kr/products/2815'">
                            <img src="resources/images/w6.PNG" style="width:100%;"><!-- areafix -->
                        </div>
                        <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2815'">
                            
                        </div>
                        <div class="heart-circle">
                            <i class="fa fa-heart icon-isHeartOn"></i>
                        </div>
                    </div>
                    <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2815'">
                        <div class="card-title grey-text text-darken-4 ellipsis2">
                            밍밍한 물무화과 안녕~ 맛이 꽉 찬 쨈무화과 안녕!
                        </div>
                    </div>
                     <div class="card-action">
                        <h5 class="farmer-name activator"><span>공슬기</span> 농부의 펀드</h5>
                        <div class="funding-graph">
                            <div class="graph-bar" style="width:70%;"></div>
                        </div>
                        <div class="funding-status">
                            <h5 class="left"><strong>1,400,000원</strong><br>모임 <small style="color: #1ab394; font-weight: bold;">70%</small></h5>
                            <h5 class="left"><strong>41명</strong><br>참여</h5>
                            <h5 class="left" style="margin-right:0;"><strong>46일</strong><br>남음</h5>
                         </div>
                    </div>
                </div>
            </div>
             <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
                    <div class="card-image">
                        <div class="card-image-bg" onclick="location.href='https://farmingfund.co.kr/products/2820'">
                            <img src="resources/images/w7.PNG" style="width:100%;"><!-- areafix -->
                        </div>
                        <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2820'">
                            
                        </div>
                        <div class="heart-circle">
                            <i class="fa fa-heart icon-isHeartOn"></i>
                        </div>
                    </div>
                    <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2820'">
                        <div class="card-title grey-text text-darken-4 ellipsis2">
                            자연이 만든 젤리, 유기농 반건조 쨈무화과
                        </div>
                    </div>
                     <div class="card-action">
                        <h5 class="farmer-name activator"><span>공슬기</span> 농부의 펀드</h5>
                        <div class="funding-graph">
                            <div class="graph-bar" style="width:48%;"></div>
                        </div>
                        <div class="funding-status">
                            <h5 class="left"><strong>238,500원</strong><br>모임 <small style="color: #1ab394; font-weight: bold;">48%</small></h5>
                            <h5 class="left"><strong>7명</strong><br>참여</h5>
                            <h5 class="left" style="margin-right:0;"><strong>20일</strong><br>남음</h5>
                       </div>
                    </div>
                </div>
            </div>
               <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                 <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
                     <div class="card-image">
                         <div class="card-image-bg" onclick="location.href='https://farmingfund.co.kr/products/2702'">
                             <img src="resources/images/w8.PNG" style="width:100%;"><!-- areafix -->
                         </div>
                         <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2702'">
                             
                         </div>
                         <div class="heart-circle">
                             <i class="fa fa-heart icon-isHeartOn"></i>
                         </div>
                     </div>
                     <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2702'">
                         <div class="card-title grey-text text-darken-4 ellipsis2">
                             조금은 터져도 괜찮아. 새빨간 완숙 토마토
                         </div>
                     </div>
                      <div class="card-action">
                         <h5 class="farmer-name activator"><span>김인성</span> 농부의 펀드</h5>
                         <div class="funding-graph">
                             <div class="graph-bar" style="width:100%;"></div>
                         </div>
                         <div class="funding-status">
                             <h5 class="left"><strong>1,315,000원</strong><br>모임 <small style="color: #1ab394; font-weight: bold;">132%</small></h5>
                             <h5 class="left"><strong>53명</strong><br>참여</h5>
                             <h5 class="left" style="margin-right:0;"><strong>18일</strong><br>남음</h5>
                          </div>
                     </div>
                 </div>
             </div>
              <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
               <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
                   <div class="card-image">
                       <div class="card-image-bg" onclick="location.href='https://farmingfund.co.kr/products/2806'">
                           <img src="resources/images/w9.PNG" style="width:100%;"><!-- areafix -->
                       </div>
                       <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2806'">
                           
                       </div>
                       <div class="heart-circle">
                           <i class="fa fa-heart icon-isHeartOn"></i>
                       </div>
                   </div>
                   <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2806'">
                       <div class="card-title grey-text text-darken-4 ellipsis2">
                           1년에 딱 한번 만나는 보랏빛 싱그러움, 서양자두 생푸룬
                       </div>
                   </div>
                    <div class="card-action">
                       <h5 class="farmer-name activator"><span>박동근</span> 농부의 펀드</h5>
                       <div class="funding-graph">
                           <div class="graph-bar" style="width:100%;"></div>
                       </div>
                       <div class="funding-status">
                           <h5 class="left"><strong>1,118,000원</strong><br>모임 <small style="color: #1ab394; font-weight: bold;">112%</small></h5>
                           <h5 class="left"><strong>39명</strong><br>참여</h5>
                           <h5 class="left" style="margin-right:0;"><strong>18일</strong><br>남음</h5>
                      </div>
                   </div>
               </div>
           </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
               <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
                   <div class="card-image">
                       <div class="card-image-bg" onclick="location.href='https://farmingfund.co.kr/products/2808'">
                           <img src="resources/images/w10.PNG" style="width:100%;"><!-- areafix -->
                       </div>
                       <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2808'">
                           
                       </div>
                       <div class="heart-circle">
                           <i class="fa fa-heart icon-isHeartOn"></i>
                       </div>
                   </div>
                   <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2808'">
                       <div class="card-title grey-text text-darken-4 ellipsis2">
                           월간 젤라또 7월호
                       </div>
                   </div>
                     <div class="card-action">
                       <h5 class="farmer-name activator"><span>뿌에블로젤라또</span> 농부의 펀드</h5>
                       <div class="funding-graph">
                           <div class="graph-bar" style="width:100%;"></div>
                       </div>
                       <div class="funding-status">
                           <h5 class="left"><strong>1,500,000원</strong><br>모임 <small style="color: #1ab394; font-weight: bold;">150%</small></h5>
                           <h5 class="left"><strong>35명</strong><br>참여</h5>
                           <h5 class="left" style="margin-right:0;"><strong>13일</strong><br>남음</h5>
                       </div>
                   </div>
               </div>
           </div>
           <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
              <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
                  <div class="card-image">
                      <div class="card-image-bg" onclick="location.href='https://farmingfund.co.kr/products/2800'">
                          <img src="resources/images/w11.PNG" style="width:100%;"><!-- areafix -->
                      </div>
                      <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2800'">
                         
                      </div>
                      <div class="heart-circle">
                          <i class="fa fa-heart icon-isHeartOn"></i>
                      </div>
                  </div>
                  <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2800'">
                      <div class="card-title grey-text text-darken-4 ellipsis2">
                          	쪄먹지 말고 마셔요, 고구마스프레드
                      </div>
                  </div>
                                          <div class="card-action">
                      <h5 class="farmer-name activator"><span>조정치</span> 농부의 펀드</h5>
                      <div class="funding-graph">
                          <div class="graph-bar" style="width:48%;"></div>
                      </div>
                      <div class="funding-status">
                          <h5 class="left"><strong>238,000원</strong><br>모임 <small style="color: #1ab394; font-weight: bold;">48%</small></h5>
                          <h5 class="left"><strong>10명</strong><br>참여</h5>
                          <h5 class="left" style="margin-right:0;"><strong>18일</strong><br>남음</h5>
                      </div>
                  </div>
              </div>
          </div>
          <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
             <div class="card" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
                 <div class="card-image">
                     <div class="card-image-bg" onclick="location.href='https://farmingfund.co.kr/products/2791'">
                         <img src="resources/images/w12.PNG" style="width:100%;"><!-- areafix -->
                     </div>
                     <div class="heart-counter" onclick="location.href='https://farmingfund.co.kr/products/2791'">
                         
                     </div>
                     <div class="heart-circle">
                         <i class="fa fa-heart icon-isHeartOn"></i>
                     </div>
                 </div>
                 <div class="card-content" onclick="location.href='https://farmingfund.co.kr/products/2791'">
                     <div class="card-title grey-text text-darken-4 ellipsis2">
                         엄마가 딸에게 주는 특별한 선물, 가평 모두앙 와인
                     </div>
                 </div>
                                         <div class="card-action">
                     <h5 class="farmer-name activator"><span>황영임</span> 농부의 펀드</h5>
                     <div class="funding-graph">
                         <div class="graph-bar" style="width:9%;"></div>
                     </div>
                     <div class="funding-status">
                         <h5 class="left"><strong>25,000원</strong><br>모임 <small style="color: #1ab394; font-weight: bold;">9%</small></h5>
                         <h5 class="left"><strong>1명</strong><br>참여</h5>
                        <h5 class="left" style="margin-right:0;"><strong>12일</strong><br>남음</h5>
                     </div>
                 </div>

             </div>
         </div>
    </div>
</div>

<div class="row center btn-see-more">
    <button type="button" class="btn btn-primary btn-45" onclick="location.href='https://farmingfund.co.kr/products/list'">더 많은 펀드상품 보기</button>
</div>
<!--이주의 신규펀드  -->

 <!-- 4.푸터 -->
    <footer >
	<%@include file="../Footer.jsp" %>
    </footer>
   <!--푸터 끝  --> 
    
</body>
</html>