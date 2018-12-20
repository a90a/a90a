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
<!-- header1 영역 시작 -->
<div id="header1" class="hd">
	<div id="hgroup">
		<h1>코딩is 골아파덕</h1>
	</div>
</div>
<div class="center">
<form method="post" action="searchField">
	<fieldset>
		<div class="center1">
			<select name="searchType">
				<option value="1">통합검색</option>
				<option value="2">강의검색</option>
				<option value="3">강사검색</option>
				<option value="4">스터디검색</option>
			</select>
			<input type="text" name="searchName" id="searchName" size="70">
			<input type="submit" value="검색">
		</div>
	</fieldset>
</form>
</div>
<!-- header1 영역 끝 -->