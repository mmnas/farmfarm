<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>

<html>
<body>

<c:if test="${sessionScope.userId==null }">
	<script type="text/javascript">
		errorAlert(pwdError);
		window.location='loginForm';
	</script>
</c:if>
<c:if test="${sessionScope.userId!=null }">
		<script type="text/javascript">
			alert("로그인 성공");
			window.location='FarmFarm';
		</script>
</c:if>

</body>
</html>