<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="../setting.jsp" %>
<html>
<body>

<c:if test="${deleteCnt==0 }">
	<script type="text/javascript">
		errorAlert(deleteError);
		window.location='deleteMember?grade=${grade}';
	</script>
</c:if>
<c:if test="${deleteCnt==1 }">
	<script type="text/javascript">
		alert("회원탈퇴 성공");
		window.location='FarmFarm';
	</script>
</c:if>

</body>
</html>