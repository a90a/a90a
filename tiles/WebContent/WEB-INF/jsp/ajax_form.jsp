<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<table>
		<thead></thead>
		<tbody>
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>이름</th>
				<th>주소</th>
				<th>비밀번호</th>
			</tr>
		</tbody>

		<tfoot></tfoot>
	</table>
	<input type="button" id="btn1" value="리스트로드">
</body>
<script>
	$(function() {
		$("#btn1").click(function() {
			$.ajax({
				url : "./members/list",
				dataType : 'json',
				cache : false,
				success : function(data) {
					console.log(data);
					let tag;
					$.each(data, function(idx, key) {
						
						tag += "<tr>";
						tag += "<td>" + key.num + "<td>";
						tag += "<td>" + key.id + "<td>";
						tag += "<td>" + key.name + "<td>";
						tag += "<td>" + key.address + "<td>";
						tag += "<td>" + key.password + "<td>";
						tag += "<tr>";
					});
					$("tbody").html(tag);
				}
			});
		});
	});
</script>
</html>