<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div id="article">
	<div id="header2">
		<h1><a href="selectListStudy">���͵� ����Ʈ</a></h1>
		<h1><a href="s_reviewList">���͵� ���� ����Ʈ</a></h1>
		<h1>���͵� ���� ��</h1>
	</div>    
<div id="content">
	<form method="post" action="createStudy" enctype="multipart/form-data">
		<input type="hidden" name="reip" value="<%=request.getRemoteAddr() %>">
		<fieldset>
			<legend>legend</legend>
			<p><label>�ۼ���</label>
			<input type="text" name="ms_id" id="ms_id">
			</p>
			<p><label>���͵��</label>
			<input type="text" name="s_title" id="s_title">
			</p>
			<p>
			<label>�з�</label>
			<input type="text" name="s_category" id="s_category">
			</p>
			<p>
			<label>�� / �� ���� �ּ�</label>
			<select name="s_loc1" id="s_loc1">
			<option value="����Ư����">����Ư����</option>
			<option value="�λ걤����">�λ걤����</option>
			<option value="�뱸������">�뱸������</option>
			<option value="��õ������">��õ������</option>
			<option value="���ֱ�����">���ֱ�����</option>
			<option value="����������">����������</option>
			<option value="��걤����">��걤����</option>
			<option value="����Ư����ġ��">����Ư����ġ��</option>
			<option value="��⵵">��⵵</option>
			<option value="������">������</option>
			<option value="��û�ϵ�">��û�ϵ�</option>
			<option value="��û����">��û����</option>
			<option value="����ϵ�">����ϵ�</option>
			<option value="���󳲵�">���󳲵�</option>
			<option value="���ϵ�">���ϵ�</option>
			<option value="��󳲵�">��󳲵�</option>
			<option value="����Ư����ġ��">����Ư����ġ��</option>
			</select>
			</p>
			<p>
			<label>���ּ�</label>
			<input type="text" name="s_loc2" id="s_loc2">
			</p>
			<p>
			<label>������</label>
			<input type="text" name="s_date1" id="s_date1">
			</p>
			<p>
			<label>������</label>
			<input type="text" name="s_date2" id="s_date2">
			</p>
			<p>
			<label>Ƚ��</label>
			<input type="text" name="s_count" id="s_count">
			</p>
			<p>
			<label>�ο�</label>
			<input type="text" name="s_pnum" id="s_pnum" 
					required="required" pattern="[^a-zA-Z]+"					
					oninvalid="this.setStudentValidity('���ڸ� �Է�')"
					oninput="this.setStudentValidity('')">
			</p>
			<p>
			<label>�Ұ�</label>
			<input type="text" name="s_comment" id="s_comment">
			</p>
			<label>�̹��� ����</label>
			<input name="mf_img" id="mf_img" type="file">
			</p>
			<p>
			<label>�ݾ�</label>
			<input type="text" name="s_price" id="s_price">
			</p>
			
			<p><input type="submit" name="����ϱ�" value="����ϱ�"></p>
		</fieldset>
	</form>
			<p><input type="submit" name="���" value="���" onclick="history.go(-1)"><p>
</div>
</div>

<script>
		$(function(){
		});
</script>
