<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.center1 {
	text-align:center;
	margin: auto;
	width: 100%;
}
</style>
<!-- header1 ���� ���� -->
<div id="header1" class="hd">
	<div id="hgroup">
		<h1>�ڵ�is ����Ĵ�</h1>
	</div>
</div>
<div class="center">
<form method="post" action="searchField">
	<fieldset>
		<div class="center1">
			<select name="searchType">
				<option value="1">���հ˻�</option>
				<option value="2">���ǰ˻�</option>
				<option value="3">����˻�</option>
				<option value="4">���͵�˻�</option>
			</select>
			<input type="text" name="searchName" id="searchName" size="70">
			<input type="submit" value="�˻�">
		</div>
	</fieldset>
</form>
</div>
<!-- header1 ���� �� -->