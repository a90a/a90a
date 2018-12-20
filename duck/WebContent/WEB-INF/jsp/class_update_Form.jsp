<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="article">
	<div id="header2">
		<h1> 선택 강의 상세보기</h1>
		<p id="time">2018-12-10</p>
	</div>
	<div id="content">
		<p>여기는 강의 생성 컨텐츠 </p>
		<form action="updateclass" method="post">
			<fieldset>
				<p>
					<label>강의 번호:</label>
					<input type="text" name="c_num" value="${cvo.c_num }" readonly="readonly"> 
				</p>
				<p>
					<label>강의 명:</label>
					<input type="text" name="c_title" value="${cvo.c_title }"> 
				</p>
				<p>
					<label>강의 생성자 :</label>
					<input type="text" name="c_name" value="${cvo.c_name }">
				</p>
				<p>
					<label>강의 시작일 :</label>
					<input type="text" name="c_date1" value="${cvo.c_date1 }">
				</p>
				<p>
					<label>강의 종료일 :</label>
					<input type="text" name="c_date2" value="${cvo.c_date2 }">
				</p>
				<p>
					<label>강의 인원 수 :</label>
					<input type="text" name="c_pnum" value="${cvo.c_pnum }"> 
				</p>
				<p>
					<label>강의 위치 도 주소 :</label>
					<input type="text" name="c_loc1" value="${cvo.c_loc1 }">
				</p>
				<p>
					<label>강의 위치 시 주소 :</label>
					<input type="text" name="c_loc2" value="${cvo.c_loc2 }">
				</p>
				<p>
					<label>강의 이미지 :</label>
					<input type="text" name="c_img"  value="${cvo.c_img }">
				</p>
				<p>
					<label>강의 설명 :</label>
					<input type="text" name="c_comment"  value="${cvo.c_comment }">
				</p>
				<p>
					<label>강의 분야 :</label>
					<input type="text" name="c_category"  value="${cvo.c_category }">
				</p>
				<p>
					<label>강의 참가비 :</label>
					<input type="text" name="c_price"  value="${cvo.c_price }">
				</p>
				<p>
					<label>강의 주 횟수 :</label>
					<input type="text" name="c_count"  value="${cvo.c_count }">
				</p>
				<p>					
					<input type="submit" id="rewriteBtn" value="수정하기">		
					<input type="button" id="cancleBtn" value="취소하기">		
				</p>
			</fieldset>
		</form>
	</div>
</div>