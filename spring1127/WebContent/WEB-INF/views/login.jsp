<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Insert title here</title>
<style type="text/css">
	#loginWrrap {width: 500px; margin:auto;}
	#loginWrrap talbe{width: 100%; border:1px dotted #9900ff}
	#loginWrrap table thead{background-color: #b9b9ff;}
</style>
</head>
<body>
	<div id="loginWrap">
		<h3>Login with UserID and Password</h3>
		<c:url var="loginUrl" value="/j_spring_security_check"></c:url> <!-- value="/j_spring_security_check : 필터 -->
		<form action="${loginUrl}" method="POST">
			<table>
				<tr>
					<td>User ID:</td>
					<td><input type="text" name="username" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td colspan="2"><input name="submit" type="submit" value="Login" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>