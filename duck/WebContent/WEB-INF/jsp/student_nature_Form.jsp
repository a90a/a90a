<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<div id="content">
	<form method="post" action="characterCreate" id="characterCreate">
	<input type="text" name="ms_id" value="${ms_id }">
		<fieldset>
			<legend>�л� ���� �� �о� �Է� �� ${ms_id }</legend>
			<div>
			<p>
				<label>1) �ڱ� ���� ����</label>
			</p>
			<p>
				<input type="radio" name="sn_my" value="����"> ����&nbsp;
				<input type="radio" name="sn_my" value="����"> ����&nbsp;
				<input type="radio" name="sn_my" value="����"> ����&nbsp;
				<input type="radio" name="sn_my" value="���"> ���&nbsp;
				<input type="radio" name="sn_my" value="�米"> �米<br>
				<input type="radio" name="sn_my" value="����"> ����&nbsp;
				<input type="radio" name="sn_my" value="ȣ���"> ȣ���&nbsp;
				<input type="radio" name="sn_my" value="����"> ����&nbsp;
				<input type="radio" name="sn_my" value="����"> ����
			</p>
			</div>
			<div>
			<p>
				<label>2) ���� ��Ī ���� ����</label>
			</p>
			<p>
				<input type="radio" name="sn_you" value="����"> ����&nbsp;
				<input type="radio" name="sn_you" value="����"> ����&nbsp;
				<input type="radio" name="sn_you" value="����"> ����&nbsp;
				<input type="radio" name="sn_you" value="���"> ���&nbsp;
				<input type="radio" name="sn_you" value="�米"> �米<br>
				<input type="radio" name="sn_you" value="����"> ����&nbsp;
				<input type="radio" name="sn_you" value="ȣ���"> ȣ���&nbsp;
				<input type="radio" name="sn_you" value="����"> ����&nbsp;
				<input type="radio" name="sn_you" value="����"> ����
			</p>
			</div>
			<div>
			<p>
				<label>3) �н� ���� �о� ����</label>
			</p>
			<p>
				<input type="radio" name="sn_category" value="�ܱ���"> �ܱ���&nbsp;
				<input type="radio" name="sn_category" value="������&�ǰ�"> ������&�ǰ�&nbsp;
				<input type="radio" name="sn_category" value="����"> ����&nbsp;
				<input type="radio" name="sn_category" value="�̼�"> �̼�&nbsp;
				<input type="radio" name="sn_category" value="��"> ��<br>
				<input type="radio" name="sn_category" value="����"> ����&nbsp;
				<input type="radio" name="sn_category" value="����&�ڰ���"> ����&�ڰ���&nbsp;
				<input type="radio" name="sn_category" value="���"> ���&nbsp;
				<input type="radio" name="sn_category" value="��Ƽ"> ��Ƽ&nbsp;
				<input type="radio" name="sn_category" value="���α׷���"> ���α׷���
			</p>
			</div>
			<p>
			<input type="submit" value="���ÿϷ�">
			</p>
		</fieldset>
	</form>
</div>