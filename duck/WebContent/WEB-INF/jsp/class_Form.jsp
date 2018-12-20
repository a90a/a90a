<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="article">
	<div id="header2">
		<h1> 강의 입력 테스트</h1>
		<p id="time">2018-12-10</p>
	</div>
	<div id="content">
		<p>여기는 강의 생성 컨텐츠 </p>
		<form action="classcreate" method="post">
		<input type="text" name="tmNumber" value="1">
		<input type="text" name="mt_id" value="${mt_id }">
			<fieldset>
				<p>
					<label>강의 명:</label>
					<input type="text" name="c_title"> 
				</p>
				<p>
					<label>강의 생성자 :</label>
					<input type="text" name="c_name">
				</p>
				<p>
					<label>강의 시작일 :</label>
					<input type="text" name="c_date1">
				</p>
				<p>
					<label>강의 종료일 :</label>
					<input type="text" name="c_date2">
				</p>
				<p>
					<label>강의 인원 수 :</label>
					<input type="text" name="c_pnum">
				</p>
				<p>
					<label>강의 위치 도 주소 :</label>
					<input type="text" name="c_loc1">
				</p>
				<p>
					<label>강의 위치 시 주소 :</label>
					<input type="text" name="c_loc2">
				</p>
				<p>
					<label>강의 이미지 :</label>
					<input type="text" name="c_img">
				</p>
				<p>
					<label>강의 설명 :</label>
					<input type="text" name="c_comment">
				</p>
				<p>
					<label>강의 분야 :</label>
					<input type="text" name="c_category">
				</p>
				<p>
					<label>강의 참가비 :</label>
					<input type="text" name="c_price">
				</p>
				<p>
					<label>강의 횟수 :</label>
					<input type="text" name="c_count">
				</p>
				<p>
					<input type="submit" value="강의 생성">
					<input type="button" id="cancle" value="취소">
				</p>
			</fieldset>
		</form>
	</div>
</div>