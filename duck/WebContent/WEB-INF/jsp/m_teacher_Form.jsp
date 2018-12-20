<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="content">
	<form method="post" action="m_teacher_create" id="m_teacher_create" enctype="multipart/form-data">
		<fieldset>
			<legend>회원가입 폼</legend>
			<p><label>아이디</label>
			<input type="text" name="mt_id" id="mt_id">
			&nbsp;
			<input type="button" id="idChkBtn" value="중복확인">
			</p>
			<p id="target"></p>
			<p>
			<label>패스워드</label>
			<input type="password" name="mt_pwd" id="mt_pwd">
			</p>
			<p>
			<label>이름</label>
			<input type="text" name="mt_name" id="mt_name" required="required" pattern="[^a-zA-X]+" oninvalid="this.setCustomValidity('한글만 입력')"
				oninput="this.setCustomValidid('')">
			</p>
			<p>
			<label>생년월일(6자리)</label>
			<input type="text" name="mt_birth" id="mt_birth">
			</p>
			<p>
			<label>성별</label>
			<input type="text" name="mt_gender" id="mt_gender">
			</p>
			<p>
			<label>이메일</label>
			<input type="text" name="mt_email" id="mt_email">
			</p>
			<p>
			<label>전화번호</label>
			<input type="text" name="mt_phone" id="mt_phone">
			</p>
			<p>
			<label>동기여부</label>
			<input type="radio" name="mt_boolean" id="mt_boolean" value="1">동의
			<input type="radio" name="mt_boolean" id="mt_boolean" value="0">동의안함
			</p>
			<p>
			<label>파일</label>
			<input name="mf_img" id="mf_img" type="file">			
			</p>
			<p>
			<input type="submit" value="회원가입">
			</p>
		</fieldset>
	</form>
</div>