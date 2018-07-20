<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<body>
<table align ="center">
		<tr>
			<th style ="width: 150px">쪽지번호</th>
			<th style ="width: 150px">${dto.letternum}</th>
		</tr>
		<tr>
			<th style ="width: 150px">작성자</th>
			<td style ="width: 150px">${dto.letterwritter}</td>
			
			<th style ="width: 150px">작성일</th>
			<td style ="width: 150px" align ="center">
				<fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.letterreg_date}"/>
			</td>
		</tr>
		
		<tr>
			<th>글제목</th>
			<td colspan="3">${dto.lettersubject}</td>
		</tr>
		
		<tr>
			<th>글내용</th>
			<td colspan="3">${dto.lettercontent}</td>
		</tr>
		</table>
</body>
</html>