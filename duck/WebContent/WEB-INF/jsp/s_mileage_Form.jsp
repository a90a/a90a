<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="article">
	<div id="header2">
		<h1> ���ϸ��� ����Ʈ </h1>
		<p id="time">2018-11-20</p>
	</div>
	<div>�Է��ϱ�
		<form action="creatS_mileage" method="post">
		Num : <input type="text" name="sm_num" id="sm_num">
		ID : <input type="text" name="ms_id" id="ms_id">
		Point : <input type="text" name="sm_point" id="sm_point">
		<input type="submit" name="" id="" value="���ϸ��� �Է�" >
		</form>
	</div>
	<div>��ȸ�ϱ�
		<form action="readS_mileage" method="post">
		ID : <input type="text" name="ms_id" id="ms_id">
		<input type="submit" name="" id="" value="���̵�� ��ȸ�ϱ�" >
		</form>
	</div>
	<div>�����ϱ� 
		<form action="updateS_mileage" method="post">
		ID : <input type="text" name="ms_id" id="ms_id">
		Point : <input type="text" name="math_point" id="math_point">
		<input type="submit" name="" id="" value="���̵�� ����Ʈ �����ϱ�" >
		</form>
	</div>
</div>


<script>
	$(function(){
		
	});
</script>