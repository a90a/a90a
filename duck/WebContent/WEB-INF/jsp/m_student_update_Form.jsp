<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="content">
<div>
<fieldset><legend>ȸ�� ����������</legend>
<ul>
<li><hr></li>
<li><a href="characterInsert">�����Է�</a></li>
<li><a href="characterModify">�������</a></li>
<li><hr></li>
<li><a href="mileageForm">���ϸ��� ���� CRU</a></li>
<li><a href="matching_study">��õ��Ī ���͵�</a></li>
</ul>
</fieldset>
</div>

	<form method="post" action="m_student_modify" id="m_student_modify" enctype="multipart/form-data">
		<fieldset>
			<legend>ȸ������ ��</legend>
			<p><label>���̵�</label>
			<input type="text" name="ms_id" id="ms_id" readonly="readonly" value="${msvo.ms_id}">
			</p>
			<p id="target"></p>
			<p>
			<label>�̸���</label>
			<input type="text" name="ms_email" id="ms_email" readonly="readonly" value="${msvo.ms_email}">
			</p>
			<p>
			<label>��й�ȣ ���� </label>
			<input type="password" name="ms_pwd" id="ms_pwd" value="${msvo.ms_pwd }">
			</p>
			<p>
			<label>�̸�</label>
			<input type="text" name="ms_name" id="ms_name" value="${msvo.ms_name}">
			</p>
			<p>
			<label>�������(6�ڸ�)</label>
			<input type="text" name="ms_birth" id="ms_birth" readonly="readonly" value="${msvo.ms_birth}">
			</p>
			<p>
			<label>����</label>
			<input type="text" name="ms_gender" id="ms_gender" readonly="readonly" value="${msvo.ms_gender}">
			</p>
			<p>
			<label>��ȭ��ȣ</label>
			<input type="text" name="ms_phone" id="ms_phone" value="${msvo.ms_phone}">
			</p>
			<p>
			<label>�� / �� ���� �ּ�</label>
			<input type="text" name="ms_loc1" id="ms_loc1" value="${msvo.ms_loc1}">
			</p>
			<p>
			<label>�̹��� ����</label>
			<img src="resources/images/${msvo.ms_img}" width="100">
			</p>
			<p>
			<label>Point</label>
			<input type="text" name="point" id="point" value="">
			</p>
			<p>
			<input type="submit" value="ȸ����������">
			</p>
		</fieldset>
	</form>
	<form method="post" action="m_student_delete">
		<p>
			<input type="submit" id="delete" value="ȸ��Ż��">
		</p>
	</form>
</div>