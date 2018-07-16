<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>    
<html>
</head>
<body>
<c:if test="${insertCnt==0}">
	<script type="text/javascript">
		errorAlert(insertError);
		window.location="registerForm";
	</script>
</c:if>
<c:if test="${insertCnt==1}">
	<script type="text/javascript">
		alert("회원가입 성공");
		window.location="FarmFarm";
	</script>
</c:if>

</body>
</html>