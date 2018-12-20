<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script>
	$(document).ready(function() {


	});
</script>
<fieldset>
	<h1>다혜 숙제 폼입니다.</h1>
	
	<fieldset>
	<legend> 2018.12.10 - 숙제</legend>
	<div>
	
	<form method="post" action="shopbag" id="shopbag">
		<input type="text" name="sl_id" id="sl_id">
			<input type="submit" value="장바구니">
		</form>
		
		<form method="post" action="mypage_class_study_list" id="mypage_class_study_list">
		<input type="text" name="sl_id" id="sl_id">
			<input type="submit" value="수강및스터디 목록">
		</form>

	</div>
	
	</fieldset>

	<fieldset>
	<legend> 2018.12.07~09 - 숙제</legend>
	<div>
		* 강사 수강 리스트
		<a href="tc_list? mt_id=${ mt_id}">강사 수강 리스트</a>
		<form method="post" action="tc_list" id="tc_list">
			<input type="text" name="mt_id" id="mt_id">
			<input type="submit" value="강사 상세 수강리스트">
		</form>
	</div>
	<hr>
	<div>
		* 강사 수강 리스 트 입력
		<form method="post" action="createTc_list">
			<input type="text" name="mt_id" id="mt_id">
			<input type="text" name="c_title" id="c_title">
			<input type="submit" value="입력">
		</form>
	</div>

<hr>
	<div>
		* 강사 마일리지 리스트
		<a href="tmileage">강사 수강 리스트</a>
		<form method="post" action="tmileage" id="tmileage">
			<input type="submit" name="tmileage" id="tmileage" value="강사마일리지">
		</form>
	</div>
	</fieldset>

</fieldset>


