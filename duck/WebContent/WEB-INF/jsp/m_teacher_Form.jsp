<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="content">
	<form method="post" action="m_teacher_create" id="m_teacher_create" enctype="multipart/form-data">
		<fieldset>
			<legend>ȸ������ ��</legend>
			<p><label>���̵�</label>
			<input type="text" name="mt_id" id="mt_id">
			&nbsp;
			<input type="button" id="idChkBtn" value="�ߺ�Ȯ��">
			</p>
			<p id="target"></p>
			<p>
			<label>�н�����</label>
			<input type="password" name="mt_pwd" id="mt_pwd">
			</p>
			<p>
			<label>�̸�</label>
			<input type="text" name="mt_name" id="mt_name" required="required" pattern="[^a-zA-X]+" oninvalid="this.setCustomValidity('�ѱ۸� �Է�')"
				oninput="this.setCustomValidid('')">
			</p>
			<p>
			<label>�������(6�ڸ�)</label>
			<input type="text" name="mt_birth" id="mt_birth">
			</p>
			<p>
			<label>����</label>
			<input type="text" name="mt_gender" id="mt_gender">
			</p>
			<p>
			<label>�̸���</label>
			<input type="text" name="mt_email" id="mt_email">
			</p>
			<p>
			<label>��ȭ��ȣ</label>
			<input type="text" name="mt_phone" id="mt_phone">
			</p>
			<p>
			<label>���⿩��</label>
			<input type="radio" name="mt_boolean" id="mt_boolean" value="1">����
			<input type="radio" name="mt_boolean" id="mt_boolean" value="0">���Ǿ���
			</p>
			<p>
			<label>����</label>
			<input name="mf_img" id="mf_img" type="file">			
			</p>
			<p>
			<input type="submit" value="ȸ������">
			</p>
		</fieldset>
	</form>
</div>