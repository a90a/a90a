<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="content">
	<form method="post" action="mtnatureCreate" id="mtnatureCreate">
	<input type="text" name="mt_id" value="${mt_id }">
		<fieldset>
			<legend>���� ���� �� �о� �Է� ��</legend>
			<div>
			<p>
				<label>1) ���� ���� ����</label>
			</p>
			<p>
				<input type="radio" name="tn_my" value="����"> ����&nbsp;
				<input type="radio" name="tn_my" value="����"> ����&nbsp;
				<input type="radio" name="tn_my" value="����"> ����&nbsp;
				<input type="radio" name="tn_my" value="���"> ���&nbsp;
				<input type="radio" name="tn_my" value="�米"> �米<br>
				<input type="radio" name="tn_my" value="����"> ����&nbsp;
				<input type="radio" name="tn_my" value="ȣ���"> ȣ���&nbsp;
				<input type="radio" name="tn_my" value="����"> ����&nbsp;
				<input type="radio" name="tn_my" value="����"> ����
			</p>
			</div>
			<div>
			<p>
				<label>2) ������ ��Ī ���� ����</label>
			</p>
			<p>
				<input type="radio" name="tn_you" value="����"> ����&nbsp;
				<input type="radio" name="tn_you" value="����"> ����&nbsp;
				<input type="radio" name="tn_you" value="����"> ����&nbsp;
				<input type="radio" name="tn_you" value="���"> ���&nbsp;
				<input type="radio" name="tn_you" value="�米"> �米<br>
				<input type="radio" name="tn_you" value="����"> ����&nbsp;
				<input type="radio" name="tn_you" value="ȣ���"> ȣ���&nbsp;
				<input type="radio" name="tn_you" value="����"> ����&nbsp;
				<input type="radio" name="tn_you" value="����"> ����
			</p>
			</div>
			<div>
			<p>
				<label>3) �н� ���� �о� ����</label>
			</p>
			<p>
				<input type="radio" name="tn_category" value="�ܱ���"> �ܱ���&nbsp;
				<input type="radio" name="tn_category" value="������&�ǰ�"> ������&�ǰ�&nbsp;
				<input type="radio" name="tn_category" value="����"> ����&nbsp;
				<input type="radio" name="tn_category" value="�̼�"> �̼�&nbsp;
				<input type="radio" name="tn_category" value="��"> ��<br>
				<input type="radio" name="tn_category" value="����"> ����&nbsp;
				<input type="radio" name="tn_category" value="����&�ڰ���"> ����&�ڰ���&nbsp;
				<input type="radio" name="tn_category" value="���"> ���&nbsp;
				<input type="radio" name="tn_category" value="��Ƽ"> ��Ƽ&nbsp;
				<input type="radio" name="tn_category" value="���α׷���"> ���α׷���
			</p>
			</div>
			<p>
			<input type="submit" value="���ÿϷ�">
			</p>
		</fieldset>
	</form>
</div>