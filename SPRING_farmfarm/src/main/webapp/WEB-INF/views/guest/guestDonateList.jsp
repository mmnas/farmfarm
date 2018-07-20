<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<html>
<!-- 부트스트랩 js -->
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>

<body>
	<header>
		<%@include file="../Header.jsp"%>
	</header>
	<div style="float: left;">
		<%@include file="../MemberSideBar.jsp"%>
	</div>


	<div class="container">
		<div class="row">


			<div class="col-md-12">
				<h1 align="center">내 기부내역</h1>
				<div class="table-responsive">
					<table id="mytable" class="table table-bordred table-striped">
						<thead>
							<tr>
								<td align="center"><b>기부 업체</b></td>
								<td align="center"><b>아이디</b></td>
								<td align="center"><b>기부 금액</b></td>
								<td align="center"><b>기부 날짜</b></td>
							</tr>
						</thead>

						<tbody>
							<c:forEach var="dto" items="${dtos}">
								<tr>
									<td align="center">${dto.rNum}</td>
									<td align="center">${dto.mem_id}</td>
									<td align="center"><c:if test="${dto.adv_reason==1}">펀드참여</c:if>
										<c:if test="${dto.adv_reason==2}">펀드취소</c:if> <c:if
											test="${dto.adv_reason==3}">경매참여</c:if> <c:if
											test="${dto.adv_reason==4}">경매취소</c:if> <c:if
											test="${dto.adv_reason==5}">이벤트</c:if></td>
									<td align="center">${dto.adv_regDate}</td>
								</tr>
								<c:set var="total" value="">
								</c:set>
							</c:forEach>

						</tbody>

					</table>

					<div class="clearfix"></div>
					<ul class="pagination pull-right">
						<li class="disabled"><a href="#"><span
								class="glyphicon 	glyphicon-chevron-left"></span></a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#"><span
								class="glyphicon glyphicon-chevron-right"></span></a></li>
					</ul>

				</div>

			</div>
		</div>
	</div>
	
	<footer>
		<%@include file="../Footer.jsp"%>
	</footer>

</body>
</html>