<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<form method="post" action="pushAlarm">
	<p>
		<label>��ȣ</label> <input type="text" name="num" id="num"
			value="${num}">
	</p>
	<p>
		<label>���̵�</label> <input type="text" name="id" id="id" value="${id}">
	</p>
	<p style="text-align: right;">
		<input type="submit" id="push" name="push" value="Ǫ�þ˸�">
	</p>
</form>

<script>
	$(function() {
		
	});
</script>