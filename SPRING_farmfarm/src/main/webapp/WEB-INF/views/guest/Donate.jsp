<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="resources/css/assets/bootstrap.css">

<body>
<!-- 헤더시작 -->
<header>
	<%@include file="../Header.jsp" %>
</header>
<!-- 헤더끝 --> 
	
<!--기부 본문  -->
<div class="row faq-content">
<div class="col-xs-12 col-sm-3 hidden-xs">

</div>

<div class="col-xs-12 col-sm-6">
<div class="faqtitle" id="faq01">기부란?</div>

<ul class="faqlist2">
	<li class="q">기부란 무엇인가요?</li>
	<li class="a">기부 (寄附) 
	[명사] 자선 사업이나 공공사업을 돕기 위하여 돈이나 물건 따위를 대가 없이 내놓음.<br>
	<br>
	</li>
</ul>

<div class="faqtitle" id="faq02">팜팜기부란?</div>

<ul class="faqlist2">
	<li class="q">팜팜기부란 무엇인가요?</li>
	<li class="a">1. 고객님이나 농부님께서 원하시는 경우에는 펀드 혹은 경매를 하는 경우, 발생하는 금액 중에서  5%를 팜팜과 협약을 맺은 기부단체들에게 관리자가 직접 기부합니다. 꼭 금액이 아니더라도 신선한 상품을 기부하셔도 좋습니다.
	<br>2. 고객님과 농부님들 뿐만 아니라 팜팜에서 발생하는 관리자의 수익률의 5%를 기부하여, 단지 고객님이나 농부님뿐아니라 팜팜에서도 팜팜기부를 꾸준히 추진하여 따뜻한 사회를 만들어가려합니다. <br>
	<br>
	</li>
</ul>


</div>
</div>
<h4 class="stit" style=" margin-left:500px;">팜팜기부 후원은 이렇게 사용됩니다.</h4>
<div class="column3-list2 clear" >
<div style="width: 50%; height: 300px; margin-left:500px;">
	<dl>
		<dt>
			<img src="resources/images/dona1.PNG" alt="첫 감사 안내">
			국내아동지원
		</dt>
		<dd>저소득가정 아이들이 건강하고 행복하게 자랄 수 있도록 생존, 보호, 발달, 참여 전반에 걸쳐 경제적, 정서적 지원을 합니다.</dd>
		
	</dl>
	<dl>
		<dt>
			<img src="resources/images/dona2.PNG" alt="정기우편물">
			해외아동지원
		</dt>
		<dd>해외아동이 가난과 질병의 고통에서
			벗어나 생애주기에 맞추어 건강하게
			성장하고, 어른이 되면 자립할 수 있도록
			돕습니다.</dd>
	</dl>
	
	<dl class="no-space">
		<dt>
			<img src="resources/images/dona3.PNG" alt="기부금영수증">
			북한아동지원
		</dt>
		<dd>북한아동이 끼니를 거르지 않고
			정상적으로 성장하도록 영양식 제공, 필수
			의약품 제공, 병원 개.보수 사업 등을
			진행합니다.</dd>
	</dl>
</div>
<div style="width: 50%; height: 300px; margin-left:500px;">

	<dl>
		<dt>
			<img src="resources/images/dana4.PNG" alt="특별 축하">
			나눔 SOS
		</dt>
		<dd>천재지변이나 각종 재해 등으로 긴급하게
			지원이나 도움이 필요한 상황이 발생한
			경우 신속하게 지원합니다.</dd>
	</dl>
		<dl>
		<dt>
			<img src="resources/images/dona5.PNG" alt="해외사업장 방문">
			해외아동결연
		</dt>
		<dd>후원자님과 해외아동이 결연을 맺고
			교육, 의료, 생계, 시설 지원 등을 통해
			결연아동의 건강한 성장한 돕습니다.</dd>
	</dl>
</div>

</div>
<div>
	<hr width="50%">
</div>

<!--기부본문끝  -->




<footer>
<%@include file="../Footer.jsp" %>
</footer>

    
 	<!--스크립트 공통부분  -->
   <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="resources/js/bootstrap.js"></script>

</body>

</html>