<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="article">
	<div id="header2">
		<h1> �Ű� �Խ��� </h1>
		<p id="time">2018-12-10</p>
	</div>
	<div>�Ű��ϱ�
		<form action="createBlock" method="post">
		�Ű���ϴ� ID : <input type="text" name="b_id" id="b_id">
		���� : <input type="text" name="b_title" id="b_title"><br>
		�Ű� �з� : 
		<select id="b_category" name="b_category">
		<option>�弳</option>
		<option>����</option>
		<option>��ų�</option>
		<option>��������</option>
		<option>���׻��</option>
		</select>
		���� : <textarea rows="30" cols="40"  name="b_content" id="b_content"></textarea>
		<input type="submit" name="" id="" value="�Ű� �ϱ�" >
		</form>
	</div>
	
	<hr>
	
	<div>����Ʈ ��ȸ�ϱ�
	<h2><a style="color: black" href="selectListBlock">�Ű� ����Ʈ ��ȸ�ϱ�</a></h2>
	</div>
	
	<hr><hr><hr>
	
		<div>�ϳ��� ��ȸ�ϱ�
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