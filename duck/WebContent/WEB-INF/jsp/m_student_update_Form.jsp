<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="content">
<div>
<fieldset><legend>회원 마이페이지</legend>
<ul>
<li><hr></li>
<li><a href="characterInsert">성향입력</a></li>
<li><a href="characterModify">성향수정</a></li>
<li><hr></li>
<li><a href="mileageForm">마일리지 관련 CRU</a></li>
<li><a href="matching_study">추천매칭 스터디</a></li>
</ul>
</fieldset>
</div>

	<form method="post" action="m_student_modify" id="m_student_modify" enctype="multipart/form-data">
		<fieldset>
			<legend>회원수정 폼</legend>
			<p><label>아이디</label>
			<input type="text" name="ms_id" id="ms_id" readonly="readonly" value="${msvo.ms_id}">
			</p>
			<p id="target"></p>
			<p>
			<label>이메일</label>
			<input type="text" name="ms_email" id="ms_email" readonly="readonly" value="${msvo.ms_email}">
			</p>
			<p>
			<label>비밀번호 수정 </label>
			<input type="password" name="ms_pwd" id="ms_pwd" value="${msvo.ms_pwd }">
			</p>
			<p>
			<label>이름</label>
			<input type="text" name="ms_name" id="ms_name" value="${msvo.ms_name}">
			</p>
			<p>
			<label>생년월일(6자리)</label>
			<input type="text" name="ms_birth" id="ms_birth" readonly="readonly" value="${msvo.ms_birth}">
			</p>
			<p>
			<label>성별</label>
			<input type="text" name="ms_gender" id="ms_gender" readonly="readonly" value="${msvo.ms_gender}">
			</p>
			<p>
			<label>전화번호</label>
			<input type="text" name="ms_phone" id="ms_phone" value="${msvo.ms_phone}">
			</p>
			<p>
			<label>시 / 도 단위 주소</label>
			<input type="text" name="ms_loc1" id="ms_loc1" value="${msvo.ms_loc1}">
			</p>
			<p>
			<label>이미지 파일</label>
			<img src="resources/images/${msvo.ms_img}" width="100">
			</p>
			<p>
			<label>Point</label>
			<input type="text" name="point" id="point" value="">
			</p>
			<p>
			<input type="submit" value="회원정보수정">
			</p>
		</fieldset>
	</form>
	<form method="post" action="m_student_delete">
		<p>
			<input type="submit" id="delete" value="회원탈퇴">
		</p>
	</form>
</div>