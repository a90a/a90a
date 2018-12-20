<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="article">
	<div id="header2">
		<h1> 마일리지 포인트 </h1>
		<p id="time">2018-11-20</p>
	</div>
	<div>입력하기
		<form action="creatS_mileage" method="post">
		Num : <input type="text" name="sm_num" id="sm_num">
		ID : <input type="text" name="ms_id" id="ms_id">
		Point : <input type="text" name="sm_point" id="sm_point">
		<input type="submit" name="" id="" value="마일리지 입력" >
		</form>
	</div>
	<div>조회하기
		<form action="readS_mileage" method="post">
		ID : <input type="text" name="ms_id" id="ms_id">
		<input type="submit" name="" id="" value="아이디로 조회하기" >
		</form>
	</div>
	<div>수정하기 
		<form action="updateS_mileage" method="post">
		ID : <input type="text" name="ms_id" id="ms_id">
		Point : <input type="text" name="math_point" id="math_point">
		<input type="submit" name="" id="" value="아이디로 포인트 수정하기" >
		</form>
	</div>
</div>


<script>
	$(function(){
		
	});
</script>