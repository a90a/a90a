<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="article">
	<div id="header2">
		<h1> �� �󼼺��� </h1>
	</div>
	<fieldset>
	<legend>${svo }</legend>
	<p>��ȣ : ${svo.s_num }
	</p>
	<p>���̵� : ${svo.ms_id }
	</p>
	<p>���� : ${svo.s_title }
	</p>
	<p>�з� : ${svo.s_category }
	</p>
	<p>����1 : ${svo.s_loc1 }
	</p>
	<p>����2 : ${svo.s_loc2 }
	</p>
	<p>��¥1 : ${svo.s_date1 }
	</p>
	<p>��¥2 : ${svo.s_date2 }
	</p>
	<p>Ƚ�� : ${svo.s_count }
	</p>
	<p>�ο� : ${svo.s_pnum }
	</p>
	<p>���� : ${svo.s_comment }
	</p>
	<p>�̹��� :<img src="resources/imgfile/${svo.s_img }">
	<input name="mf_img" id="mf_img" type="file">
	</p>
	<p>���� : ${svo.s_price }
	</p>
	<a href="deleteStudy?num=${svo.s_num }">�����ϱ�</a>
	<a href="insertStudyList_l?num=${svo.s_num }&&msid=${svo.ms_id }&&buynum=2">���͵��û</a>
	<a href="insertStudyList_l?num=${svo.s_num }&&msid=${svo.ms_id }&&buynum=1">���͵���</a>
	</fieldset>
	<p><input type="submit" name="���" value="���" onclick="history.go(-1)"><p>
</div>


<script>
	$(function(){
		
	});
</script>