<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<title>쪽지쓰기</title>
</head>
<body>
<h2 align="center">쪽지문의</h2>
<form action="LTWritePro" method="post" name="LTwriteform">
		<input type="hidden" name="letternum" value="${letternum}">
		<input type="hidden" name="letterref" value="${letterref}">
		<input type="hidden" name="letterref_step" value="${letterref_step}">
		<input type="hidden" name="letterref_level" value="${letterref_level}">
	<table align="center">
		<tr>
			<th>작성자</th>
			<td>
				<input class="input" type="text" name="letterwritter" maxlength="20" style="width:270px" placeholder="이름을 입력하세요" autocomplete="off">
			</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td>
				<input class="input" type="password" name="pwd" maxlength="10" style="width:270px" placeholder="패스워드를 입력하세요" autocomplete="off">
			</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>
				<input class="input" type="text" name="lettersubject" maxlength="50" style="width:270px"placeholder="제목을 입력하세요 예)***농부-**문의건" autocomplete="off">
			</td>
		</tr>
		<tr>
			<th>문의내용</th>
			<td>
				<textarea class ="input" rows="10" cols="40" name="lettercontent" style="width:270px" placeholder="농부에게 문의할 내용을 입력하세요" autocomplete="off"></textarea> 
			</td>
		</tr>
		<tr>
			<th colspan="2" style=" height: 50px; padding-left: 100px;">
			<input class="inputButton" type="submit" value="작성">
			<input class="inputButton" type="reset" value="다시쓰기">
			<input class="inputButton" type="button" value="쪽지함가기"
				   onclick="self.close();">
			</th>	
		</tr>
	</table>
	</form>
</body>
</html>