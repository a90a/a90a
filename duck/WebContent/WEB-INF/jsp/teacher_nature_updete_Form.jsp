<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="content">
	<form method="post" action="natureModify" id="natureModify">
		<fieldset>
			<legend>���� ���� �� �о� �Է� ��</legend>
			<div>
			<p>
				<label>1) �ڱ� ����</label>
			</p>
			<p>
			<input type="text" name="tn_my" id="tn_my" value="${tnvo.tn_my}">
			</p>
			</div>
			<div>
			<p>
				<label>2) ���� ��Ī ����</label>
			</p>
			<p>
				<input type="text" name="tn_you" id="tn_you" value="${tnvo.tn_you}">
			</p>
			</div>
			<div>
			<p>
				<label>3) �н� ���� �о�</label>
			</p>
			<p>
				<input type="text" name="tn_category" id="tn_category" value="${tnvo.tn_category}">
			</p>
			</div>
			<p>
			<input type="submit" value="�������">
			</p>
		</fieldset>
	</form>
	<form method="post" action="natureDelete_teacher">
		<p>
			<input type="submit" id="delete" value="�������">
		</p>
	</form>
</div>