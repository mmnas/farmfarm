<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<title>회원가입</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<!-- 외부스타일 시트 적용 -->
</head>

<body>

<!-- 1.css 추가부분 -->
<style type="text/css">
	/* body {
	    padding-top: 90px;
	} */
	.panel-login {
		border-color: #ccc;
		-webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
		-moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
		box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
	}
	.panel-login>.panel-heading {
		color: #00415d;
		background-color: #fff;
		border-color: #fff;
		text-align:center;
	}
	.panel-login>.panel-heading a{
		text-decoration: none;
		color: #666;
		font-weight: bold;
		font-size: 15px;
		-webkit-transition: all 0.1s linear;
		-moz-transition: all 0.1s linear;
		transition: all 0.1s linear;
	}
	.panel-login>.panel-heading a.active{
		color: #029f5b;
		font-size: 18px;
	}
	.panel-login>.panel-heading hr{
		margin-top: 10px;
		margin-bottom: 0px;
		clear: both;
		border: 0;
		height: 1px;
		background-image: -webkit-linear-gradient(left,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.15),rgba(0, 0, 0, 0));
		background-image: -moz-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
		background-image: -ms-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
		background-image: -o-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
	}
	.panel-login input[type="text"],.panel-login input[type="email"],.panel-login input[type="password"] {
		height: 45px;
		border: 1px solid #ddd;
		font-size: 16px;
		-webkit-transition: all 0.1s linear;
		-moz-transition: all 0.1s linear;
		transition: all 0.1s linear;
	}
	.panel-login input:hover,
	.panel-login input:focus {
		outline:none;
		-webkit-box-shadow: none;
		-moz-box-shadow: none;
		box-shadow: none;
		border-color: #ccc;
	}
	.btn-login {
		background-color: #59B2E0;
		outline: none;
		color: #fff;
		font-size: 14px;
		height: auto;
		font-weight: normal;
		padding: 14px 0;
		text-transform: uppercase;
		border-color: #59B2E6;
	}
	.btn-login:hover,
	.btn-login:focus {
		color: #fff;
		background-color: #53A3CD;
		border-color: #53A3CD;
	}
	.forgot-password {
		text-decoration: underline;
		color: #888;
	}
	.forgot-password:hover,
	.forgot-password:focus {
		text-decoration: underline;
		color: #666;
	}
	
	.btn-register {
		background-color: #1CB94E;
		outline: none;
		color: #fff;
		font-size: 14px;
		height: auto;
		font-weight: normal;
		padding: 14px 0;
		text-transform: uppercase;
		border-color: #1CB94A;
	}
	.btn-register:hover,
	.btn-register:focus {
		color: #fff;
		background-color: #1CA347;
		border-color: #1CA347;
	}
	
</style>

<!-- 헤더시작 -->
	<%@include file="../Header.jsp" %>
<!-- 헤더끝 --> 
<!--2 html 추가부분 -->
<!--loginForm.html을 다른이름으로 저장해서 registerForm.html로 저장한다.  -->
<!--1) display:none <=> display:block을 서로 바꾼다.
	2) 로그인의 class="active"를 회원가입쪽에 잘라서 붙인다.
	
  -->
<div class="container">
   	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-login">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-6">
							<a href="#" id="login-form-link">로그인</a>
						</div>
						<div class="col-xs-6">
							<a href="#" class="active" id="register-form-link">회원가입</a>
						</div>
					</div>
					<hr>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<form id="login-form" action="https://phpoll.com/login/process" method="post" role="form" style="display: none;">
								<div class="form-group">
									<input type="text" name="userID" id="userID" tabindex="1" class="form-control" placeholder="아이디" value="">
								</div>
								<div class="form-group">
									<input type="password" name="userPassword" id="userPassword" tabindex="2" class="form-control" placeholder="비밀번호">
								</div>
								<div class="form-group text-center">
									<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
									<label for="remember">아이디 기억하기</label>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-sm-6 col-sm-offset-3">
											<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="로그인">
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-lg-12">
											<div class="text-center">
												<a href="https://phpoll.com/recover" tabindex="5" class="forgot-password">비밀번호 찾기</a>
											</div>
										</div>
									</div>
								</div>
							</form>
							<form id="registerForm" name="registerForm" action="registerPro" method="post" role="form" style="display: block;">
								<div class="form-group">
									<input type="text" name="userId" id="userId" tabindex="1" class="form-control-sub" placeholder="아이디" value="">
									<input type="button" class="form-control-sub" value="중복확인" style="width:30%; margin-left:20px;" onclick="return clickCinfirm();">
								</div>

								<div class="form-group">
									<input type="password" name="userPassword" id="userPassword" tabindex="1" class="form-control" placeholder="비밀번호">
								</div>
								<div class="form-group">
									<input type="password" name="confirm-password" id="confirm-password" tabindex="1" class="form-control" placeholder="비밀번호 확인">
								</div>
								<div class="form-group">
								</div>
									<input type="text" name="userName" id="userName" tabindex="1" class="form-control" placeholder="이름" value="">
								<div class="form-group">
									<input type="text" name="hp" id="hp" tabindex="1" class="form-control" placeholder="휴대폰번호 -없이 입력" value="">
								</div>
								<div class="form-group">
									<input type="text" name="address" id="address" tabindex="1" class="form-control" placeholder="주소" value="">
								</div>
								<div class="form-group">
									<input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="이메일 주소" value="">
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-sm-6 col-sm-offset-3">
											<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="가입하기">
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
   <!-- 추가 -->
   <!-- 4.푸터 : 홈페이지의 기타 정보를 보여주는 역할을 수행한다.
      홈페이지의 가장 아래쪽에 위치하고 저작권, 개발자, 네비게이션 등을 포함한다.
    -->
    <!-- 4.푸터 -->
    <footer >
	<%@include file="../Footer.jsp" %>
    </footer>
   <!--푸터 끝  --> 
    
 	<!--스크립트 공통부분  -->
   <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="resources/js/bootstrap.js"></script>>
 <!-- 자바스크립트 공통부분 -->
 
 <!-- 3 js 추가부분 -->
 <script type="text/javascript">
 $(function() {

    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});
 </script>
 
 <script type="text/javascript">
 function clickCinfirm(){
	// 아이디값 미 입력시
	if (!document.registerForm.userId.value) {
			alert(msg_id);
			document.registerForm.userId.focus();
			return false;
		}
	// 중복체크 눌렀을시
		/*
		 * window.open("주소","파일명","별칭[윈도우명]","속성");
		 * 
		 */
	 var url="confirmId?userId=" + document.registerForm.userId.value;
	 window.open(url, "confirm", "width=400, height=300, left=500, top=400");
 }
 </script>
   
</body>
</html>