<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="content">
	<form method="post" action="natureModify" id="natureModify">
		<fieldset>
			<legend>�л� ���� �� �о� �Է� ��</legend>
			<div>
			<p>
				<label>1) �ڱ� ����</label>
			</p>
			<p>
			<input type="text" name="sn_my" id="sn_my" value="${snvo.sn_my}">
			</p>
			</div>
			<div>
			<p>
				<label>2) ���� ��Ī ����</label>
			</p>
			<p>
				<input type="text" name="sn_you" id="sn_you" value="${snvo.sn_you}">
			</p>
			</div>
			<div>
			<p>
				<label>3) �н� ���� �о�</label>
			</p>
			<p>
				<input type="text" name="sn_category" id="sn_category" value="${snvo.sn_category}">
			</p>
			</div>
			<p>
			<input type="submit" value="�������">
			</p>
		</fieldset>
	</form>
	<form method="post" action="natureDelete">
		<p>
			<input type="submit" id="delete" value="�������">
		</p>
	</form>
</div>