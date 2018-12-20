<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="content">
<div>
<fieldset><legend>강사 마이페이지 ${mt_id }</legend>
<ul>
<li><form method="post" action="tc_list" id="tc_list">
			<input type="text" name="mt_id" id="mt_id" value="${mt_id }">
			<input type="submit" value="강사 상세 수강리스트">
		</form></li>
<li><hr></li> 
<li><a href="natureInsert">성향입력</a></li>
<li><a href=characterModify_teacher>성향수정</a></li>
<li><hr></li>
<li><a href="tmileage">강사 마일리지 관련</a></li>
</ul>
</fieldset>
</div>

	<form method="post" action="m_teacher_modify" id="m_teacher_modify" enctype="multipart/form-data">
		<fieldset>
			<legend>강사 수정 폼</legend>
			<p><label>아이디</label>
			<input type="text" name="mt_id" id="mt_id" readonly="readonly" value="${mtvo.mt_id }">
			</p>
			<p id="target"></p>
			<p>
			<label>패스워드</label>
			<input type="password" name="mt_pwd" id="mt_pwd" value="${mtvo.mt_pwd }">
			</p>
			<p>
			<label>이름</label>
			<input type="text" name="mt_name" id="mt_name" value="${mtvo.mt_name }">
			</p>			
			<p>
			<label>전화번호</label>
			<input type="text" name="mt_phone" id="mt_phone" value="${mtvo.mt_phone}">
			</p>
			<p>
			<input type="submit" value="회원정보수정">
			</p>
		</fieldset>
	</form>
	<form method="post" action="m_teacher_delete">
		<p>
			<input type="submit" id="delete" value="회원탈퇴">
		</p>
	</form>
</div>