<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div id="article">
	<div id="header2">
		<h1><a href="selectListStudy">스터디 리스트</a></h1>
		<h1><a href="s_reviewList">스터디 리뷰 리스트</a></h1>
		<h1>스터디 개설 폼</h1>
	</div>    
<div id="content">
	<form method="post" action="createStudy" enctype="multipart/form-data">
		<input type="hidden" name="reip" value="<%=request.getRemoteAddr() %>">
		<fieldset>
			<legend>legend</legend>
			<p><label>작성자</label>
			<input type="text" name="ms_id" id="ms_id">
			</p>
			<p><label>스터디명</label>
			<input type="text" name="s_title" id="s_title">
			</p>
			<p>
			<label>분류</label>
			<input type="text" name="s_category" id="s_category">
			</p>
			<p>
			<label>시 / 도 단위 주소</label>
			<select name="s_loc1" id="s_loc1">
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
			<label>상세주소</label>
			<input type="text" name="s_loc2" id="s_loc2">
			</p>
			<p>
			<label>시작일</label>
			<input type="text" name="s_date1" id="s_date1">
			</p>
			<p>
			<label>종료일</label>
			<input type="text" name="s_date2" id="s_date2">
			</p>
			<p>
			<label>횟수</label>
			<input type="text" name="s_count" id="s_count">
			</p>
			<p>
			<label>인원</label>
			<input type="text" name="s_pnum" id="s_pnum" 
					required="required" pattern="[^a-zA-Z]+"					
					oninvalid="this.setStudentValidity('숫자만 입력')"
					oninput="this.setStudentValidity('')">
			</p>
			<p>
			<label>소개</label>
			<input type="text" name="s_comment" id="s_comment">
			</p>
			<label>이미지 파일</label>
			<input name="mf_img" id="mf_img" type="file">
			</p>
			<p>
			<label>금액</label>
			<input type="text" name="s_price" id="s_price">
			</p>
			
			<p><input type="submit" name="등록하기" value="등록하기"></p>
		</fieldset>
	</form>
			<p><input type="submit" name="취소" value="취소" onclick="history.go(-1)"><p>
</div>
</div>

<script>
		$(function(){
		});
</script>
