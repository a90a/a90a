<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="content">
<div>
<fieldset><legend>���� ���������� ${mt_id }</legend>
<ul>
<li><form method="post" action="tc_list" id="tc_list">
			<input type="text" name="mt_id" id="mt_id" value="${mt_id }">
			<input type="submit" value="���� �� ��������Ʈ">
		</form></li>
<li><hr></li> 
<li><a href="natureInsert">�����Է�</a></li>
<li><a href=characterModify_teacher>�������</a></li>
<li><hr></li>
<li><a href="tmileage">���� ���ϸ��� ����</a></li>
</ul>
</fieldset>
</div>

	<form method="post" action="m_teacher_modify" id="m_teacher_modify" enctype="multipart/form-data">
		<fieldset>
			<legend>���� ���� ��</legend>
			<p><label>���̵�</label>
			<input type="text" name="mt_id" id="mt_id" readonly="readonly" value="${mtvo.mt_id }">
			</p>
			<p id="target"></p>
			<p>
			<label>�н�����</label>
			<input type="password" name="mt_pwd" id="mt_pwd" value="${mtvo.mt_pwd }">
			</p>
			<p>
			<label>�̸�</label>
			<input type="text" name="mt_name" id="mt_name" value="${mtvo.mt_name }">
			</p>			
			<p>
			<label>��ȭ��ȣ</label>
			<input type="text" name="mt_phone" id="mt_phone" value="${mtvo.mt_phone}">
			</p>
			<p>
			<input type="submit" value="ȸ����������">
			</p>
		</fieldset>
	</form>
	<form method="post" action="m_teacher_delete">
		<p>
			<input type="submit" id="delete" value="ȸ��Ż��">
		</p>
	</form>
</div>