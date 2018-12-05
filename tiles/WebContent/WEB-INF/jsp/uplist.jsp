<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>miniList.jsp</title>
<style>
	#warp,fieldset{ 
	width: 400px;
	margin: auto;
	}
	#warp > table,td,th {
	border: : 1px solid black;
	}
	#warp > table > tfoot {
	text-align: right;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<div id="warp">
		<fieldset>
			<legend>miniBoard List</legend>
			<table>
				<thead>
				<tr>
					<th>��ȣ</th>
					<th>�̹���</th>
					<th>����</th>
					<th>�ۼ���</th>
					<th>��¥</th>
					<th>�ٿ�ε�</th>
				</tr>
				</thead>
				<tfoot>
					<tr><td colspan="6">
					<input type="button" id="click" value="write">
					</td></tr>
				</tfoot>
				<tbody>
				<c:forEach var="e" items="${list}">
				<tr>
					<td>${e.num}</td>
					<%--�󼼺��� ������ ���ؼ� �𵨷� prim --%>
					<td><a href="miniboardDetail?num=${e.num}">
							${e.imgfile}</a></td>
					<td>${e.title}</td>
					<td>${e.writer}</td>
					<td>${e.rdate}</td>
					<td><a href="fileDown?fileNaem=${e.imgfile}">down</a>
				</tr>
				</c:forEach>
				</tbody>
			</table>
		</fieldset>
	</div>
<script>
	$(function() {
		$("#click").click(function() {
			location = "form3";
		});
	});
</script>
</body>
</html>