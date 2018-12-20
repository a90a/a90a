<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="article">
	<div id="header2">
		<h1> 글 상세보기 </h1>
	</div>
	<fieldset>
	<legend>${svo }</legend>
	<p>번호 : ${svo.s_num }
	</p>
	<p>아이디 : ${svo.ms_id }
	</p>
	<p>제목 : ${svo.s_title }
	</p>
	<p>분류 : ${svo.s_category }
	</p>
	<p>지역1 : ${svo.s_loc1 }
	</p>
	<p>지역2 : ${svo.s_loc2 }
	</p>
	<p>날짜1 : ${svo.s_date1 }
	</p>
	<p>날짜2 : ${svo.s_date2 }
	</p>
	<p>횟수 : ${svo.s_count }
	</p>
	<p>인원 : ${svo.s_pnum }
	</p>
	<p>내용 : ${svo.s_comment }
	</p>
	<p>이미지 :<img src="resources/imgfile/${svo.s_img }">
	<input name="mf_img" id="mf_img" type="file">
	</p>
	<p>가격 : ${svo.s_price }
	</p>
	<a href="deleteStudy?num=${svo.s_num }">삭제하기</a>
	<a href="insertStudyList_l?num=${svo.s_num }&&msid=${svo.ms_id }&&buynum=2">스터디신청</a>
	<a href="insertStudyList_l?num=${svo.s_num }&&msid=${svo.ms_id }&&buynum=1">스터디담기</a>
	</fieldset>
	<p><input type="submit" name="취소" value="취소" onclick="history.go(-1)"><p>
</div>


<script>
	$(function(){
		
	});
</script>