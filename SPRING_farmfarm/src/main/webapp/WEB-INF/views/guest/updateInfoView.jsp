<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<html>
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

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
		background-color: #1CA347;
		border-color: #1CA347;
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

<body>

<c:if test="${selectCnt==0}">
	<script type="text/javascript">
		errorAlert(pwdError);
		window.location='updateInfoPage';
	</script>
</c:if>

<c:if test="${selectCnt!=0}">

	
	<header>
		<%@include file="../Header.jsp" %>
	</header>
	<div style="float:left; ">
		<%@include file="../MemberSideBar.jsp" %>		
	</div>
	
		<div class="container">
	   	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-12">
								<a href="#" class="active" id="register-form-link">회원정보 수정내용</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="registerForm" name="registerForm" action="updateMemberPro" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" class="form-control-sub" value="아이디" style="width:30%; margin-right:20px; /* background-color: #66afe9; */" disabled >
										<input type="text" name="userId" id="userId" tabindex="1" class=form-control-sub placeholder="아이디" value="${dto.mem_id }" style="background-color: lightgray" disabled>
									</div>
	
									<div class="form-group">
										<input type="text" class="form-control-sub" value="변경할 비밀번호" style="width:30%; margin-right:20px; /* background-color: #66afe9; */" disabled >
										<input type="password" name="userPassword" id="userPassword" tabindex="1" class="form-control-sub" placeholder="비밀번호" value="${dto.mem_pwd}">
									</div>
									<div class="form-group">
										<input type="text" class="form-control-sub" value="이름" style="width:30%; margin-right:20px; /* background-color: #66afe9; */" disabled >								
										<input type="text" name="userName" id="userName" tabindex="1" class="form-control-sub" placeholder="이름" value="${dto.mem_name }" style="background-color: lightgray" disabled>
									</div>
									<div class="form-group">
										<input type="text" class="form-control-sub" value="휴대폰번호" style="width:30%; margin-right:20px; /* background-color: #66afe9; */" disabled >
										<input type="text" name="hp" id="hp" tabindex="1" class="form-control-sub" placeholder="휴대폰번호 -없이 입력" value="${dto.mem_hp }" maxlength="12">
									</div>
									<div class="form-group">
										<input type="text" class="form-control-sub" value="주소" style="width:30%; margin-right:20px; /* background-color: #66afe9; */" disabled >
										<input type="text" name="address" id="address" tabindex="1" class="form-control-sub" placeholder="주소" value="${dto.mem_address }">
									</div>
									<div class="form-group">
										<input type="text" class="form-control-sub" value="이메일" style="width:30%; margin-right:20px; /* background-color: #66afe9; */" disabled >
										<input type="email" name="email" id="email" tabindex="1" class="form-control-sub" placeholder="이메일 주소" value="${dto.mem_email }">
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="변경">
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
		
	<footer>
		<%@include file="../Footer.jsp" %>
	</footer>
</c:if>
</body>
</html>