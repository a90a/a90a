<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script>
	$(document).ready(function() {


	});
</script>
<fieldset>
	<h1>���� ���� ���Դϴ�.</h1>
	
	<fieldset>
	<legend> 2018.12.10 - ����</legend>
	<div>
	
	<form method="post" action="shopbag" id="shopbag">
		<input type="text" name="sl_id" id="sl_id">
			<input type="submit" value="��ٱ���">
		</form>
		
		<form method="post" action="mypage_class_study_list" id="mypage_class_study_list">
		<input type="text" name="sl_id" id="sl_id">
			<input type="submit" value="�����׽��͵� ���">
		</form>

	</div>
	
	</fieldset>

	<fieldset>
	<legend> 2018.12.07~09 - ����</legend>
	<div>
		* ���� ���� ����Ʈ
		<a href="tc_list? mt_id=${ mt_id}">���� ���� ����Ʈ</a>
		<form method="post" action="tc_list" id="tc_list">
			<input type="text" name="mt_id" id="mt_id">
			<input type="submit" value="���� �� ��������Ʈ">
		</form>
	</div>
	<hr>
	<div>
		* ���� ���� ���� Ʈ �Է�
		<form method="post" action="createTc_list">
			<input type="text" name="mt_id" id="mt_id">
			<input type="text" name="c_title" id="c_title">
			<input type="submit" value="�Է�">
		</form>
	</div>

<hr>
	<div>
		* ���� ���ϸ��� ����Ʈ
		<a href="tmileage">���� ���� ����Ʈ</a>
		<form method="post" action="tmileage" id="tmileage">
			<input type="submit" name="tmileage" id="tmileage" value="���縶�ϸ���">
		</form>
	</div>
	</fieldset>

</fieldset>


