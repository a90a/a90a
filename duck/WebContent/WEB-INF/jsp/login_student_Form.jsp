<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div id="content">
	<fieldset>
		<legend>���� �α��� ��</legend>
		<form method="post" action="loginProcess" autocomplete="off">
			<p>
				<label>���̵�</label> <input type="text" name="ms_id" id="ms_id">
			</p>
			<p>
				<label>��й�ȣ</label> <input type="password" name="ms_pwd" id="ms_pwd">
			</p>
			<p style="text-align: right;">
				<input type="submit" value="�α���">
			</p>
		</form>
		<a href="findIdPwd">���̵�/���ã��</a>
	</fieldset>
</div>