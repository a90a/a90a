<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div id="content">
	<form method="post" action="m_student_create" id="m_student_create" enctype="multipart/form-data">
		<input type="hidden" name="duplicated" id="duplicated"/>
		<fieldset>
			<legend>회원가입 폼</legend>
			<p><label>아이디</label>
			<input type="text" name="ms_id" id="ms_id">
			&nbsp;
			<input type="button" id="idChkBtn" name="idChkBtn" 
			value="중복확인" style="margin-left: 20px" />
			</p>
			<p id="target"></p>
			<p>
			<label>이메일</label>
			<input type="text" name="ms_email" id="ms_email">
			</p>
			<p>
			<label>비밀번호</label>
			<input type="password" name="ms_pwd" id="ms_pwd">
			</p>
			<p>
			<label>이름</label>
			<input type="text" name="ms_name" id="ms_name" 
					required="required" pattern="[^a-zA-Z]+"					
					oninvalid="this.setCustomValidity('한글만 입력')"
					oninput="this.setCustomValidity('')">
			</p>
			<p>
			<label>생년월일(6자리)</label>
			<input type="text" name="ms_birth" id="ms_birth">
			</p>
			<p>
			<label>성별</label>
			<input type="text" name="ms_gender" id="ms_gender">
			</p>
			<p>
			<label>전화번호</label>
			<input type="text" name="ms_phone" id="ms_phone">
			</p>
			<p>
			<label>시 / 도 단위 주소</label>
			<select name="ms_loc1" id="ms_loc1">
			<option value="서울특별시">서울특별시</option>
			<option value="부산광역시">부산광역시</option>
			<option value="대구광역시">대구광역시</option>
			<option value="인천광역시">인천광역시</option>
			<option value="광주광역시">광주광역시</option>
			<option value="대전광역시">대전광역시</option>
			<option value="울산광역시">울산광역시</option>
			<option value="세종특별자치시">세종특별자치시</option>
			<option value="경기도">경기도</option>
			<option value="강원도">강원도</option>
			<option value="충청북도">충청북도</option>
			<option value="충청남도">충청남도</option>
			<option value="전라북도">전라북도</option>
			<option value="전라남도">전라남도</option>
			<option value="경상북도">경상북도</option>
			<option value="경상남도">경상남도</option>
			<option value="제주특별자치도">제주특별자치도</option>
			</select>
			</p>
			<p>
			<label>동의여부</label>
			<input type="radio" name="ms_boolean" id="ms_boolean" value="1">동의
			<input type="radio" name="ms_boolean"id="ms_boolean"  value="0">동의안함
			</p>
			<p>
			<label>이미지 파일</label>
			<input name="mf_img" id="mf_img" type="file">
			</p>
			<p>
			<input type="submit" value="회원가입">
			</p>
		</fieldset>
	</form>
</div>
<script>
$(function(){
   // 회원 아이디 중복 확인!
   $('#idChkBtn').click(function(){
      $.ajax({
         url:"idconfirm/idcheck?ms_id="+$('#ms_id').val(),
         success:function(data){
            console.log(data);
            if(data == 0){
               $('#target').show().css("color","blue").text("사용가능");
            } else{
               $('#target').show().css("color","red").text("사용중");
            }
         }
      });
   });
});
</script>