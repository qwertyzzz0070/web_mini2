<%@page import="car.dto.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update.jsp</title>
<style type="text/css">




</style>
</head>
<body>
<%
	MemberVO mem = (MemberVO)(request.getSession().getAttribute("loginMember"));
%>
<br>
	<h3>개인 정보 수정하기</h3>
		<br>
		<form action="logSc" method="post">
			  <table border="1" cellspacing="1" width="60%">
				  <tr>
					<td width=30%>사용자 아이디</td>
					<td width=70%>
						<input type="text" name="id" value="<%=mem.getId()%>">
					</td>
				  </tr>
				  <tr>
					<td width="30%">비밀번호 수정</td>
					<td width="70%">
						<input type="password" name="pwd" value="<%= mem.getPassword() %>">
					</td>
				  </tr>			  
				  <tr>
					<td width="30%">이름</td>
					<td width="70%">
						<input type="text" name="name" value="<%= mem.getName() %>">
					</td>
				  </tr>
				  <tr>
					<td width="30%">이메일</td>
					<td width="70%">
						<input type="email" name="mail" value="<%= mem.getEmail() %>">
					</td>	  
				  <tr>				  
				  <tr>
					<td width="30%">주소</td>
					<td width="70%">
						<input type="text" name="addr" value="<%= mem.getAddr() %>">
					</td>	  
				  <tr>				  
				  <tr>
					<td width="30%">전화번호</td>
					<td width="70%">
						<input type="tel" name="phone" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" value="<%= mem.getPhone() %>">
					</td>	  
				  <tr>				  
			</table>  
			<input type="hidden" value="update"  name="command">
			<br><br>
			<input type="submit" value="저장하기" >
			<input type="button" value="메인으로" Onclick="location.href='loginView.jsp'">
			
		</form>
		

</body>
</html>