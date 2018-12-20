<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<div id="content">
	<form method="post" action="characterCreate" id="characterCreate">
	<input type="text" name="ms_id" value="${ms_id }">
		<fieldset>
			<legend>학생 성향 및 분야 입력 폼 ${ms_id }</legend>
			<div>
			<p>
				<label>1) 자기 성향 선택</label>
			</p>
			<p>
				<input type="radio" name="sn_my" value="성실"> 성실&nbsp;
				<input type="radio" name="sn_my" value="적극"> 적극&nbsp;
				<input type="radio" name="sn_my" value="논쟁"> 논쟁&nbsp;
				<input type="radio" name="sn_my" value="대담"> 대담&nbsp;
				<input type="radio" name="sn_my" value="사교"> 사교<br>
				<input type="radio" name="sn_my" value="열정"> 열정&nbsp;
				<input type="radio" name="sn_my" value="호기심"> 호기심&nbsp;
				<input type="radio" name="sn_my" value="모험"> 모험&nbsp;
				<input type="radio" name="sn_my" value="자유"> 자유
			</p>
			</div>
			<div>
			<p>
				<label>2) 상대방 매칭 성향 선택</label>
			</p>
			<p>
				<input type="radio" name="sn_you" value="성실"> 성실&nbsp;
				<input type="radio" name="sn_you" value="적극"> 적극&nbsp;
				<input type="radio" name="sn_you" value="논쟁"> 논쟁&nbsp;
				<input type="radio" name="sn_you" value="대담"> 대담&nbsp;
				<input type="radio" name="sn_you" value="사교"> 사교<br>
				<input type="radio" name="sn_you" value="열정"> 열정&nbsp;
				<input type="radio" name="sn_you" value="호기심"> 호기심&nbsp;
				<input type="radio" name="sn_you" value="모험"> 모험&nbsp;
				<input type="radio" name="sn_you" value="자유"> 자유
			</p>
			</div>
			<div>
			<p>
				<label>3) 학습 서비스 분야 선택</label>
			</p>
			<p>
				<input type="radio" name="sn_category" value="외국어"> 외국어&nbsp;
				<input type="radio" name="sn_category" value="스포츠&건강"> 스포츠&건강&nbsp;
				<input type="radio" name="sn_category" value="음악"> 음악&nbsp;
				<input type="radio" name="sn_category" value="미술"> 미술&nbsp;
				<input type="radio" name="sn_category" value="댄스"> 댄스<br>
				<input type="radio" name="sn_category" value="연기"> 연기&nbsp;
				<input type="radio" name="sn_category" value="시험&자격증"> 시험&자격증&nbsp;
				<input type="radio" name="sn_category" value="취미"> 취미&nbsp;
				<input type="radio" name="sn_category" value="뷰티"> 뷰티&nbsp;
				<input type="radio" name="sn_category" value="프로그래밍"> 프로그래밍
			</p>
			</div>
			<p>
			<input type="submit" value="선택완료">
			</p>
		</fieldset>
	</form>
</div>