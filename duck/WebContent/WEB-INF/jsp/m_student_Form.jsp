<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div id="content">
	<form method="post" action="m_student_create" id="m_student_create" enctype="multipart/form-data">
		<input type="hidden" name="duplicated" id="duplicated"/>
		<fieldset>
			<legend>ȸ������ ��</legend>
			<p><label>���̵�</label>
			<input type="text" name="ms_id" id="ms_id">
			&nbsp;
			<input type="button" id="idChkBtn" name="idChkBtn" 
			value="�ߺ�Ȯ��" style="margin-left: 20px" />
			</p>
			<p id="target"></p>
			<p>
			<label>�̸���</label>
			<input type="text" name="ms_email" id="ms_email">
			</p>
			<p>
			<label>��й�ȣ</label>
			<input type="password" name="ms_pwd" id="ms_pwd">
			</p>
			<p>
			<label>�̸�</label>
			<input type="text" name="ms_name" id="ms_name" 
					required="required" pattern="[^a-zA-Z]+"					
					oninvalid="this.setCustomValidity('�ѱ۸� �Է�')"
					oninput="this.setCustomValidity('')">
			</p>
			<p>
			<label>�������(6�ڸ�)</label>
			<input type="text" name="ms_birth" id="ms_birth">
			</p>
			<p>
			<label>����</label>
			<input type="text" name="ms_gender" id="ms_gender">
			</p>
			<p>
			<label>��ȭ��ȣ</label>
			<input type="text" name="ms_phone" id="ms_phone">
			</p>
			<p>
			<label>�� / �� ���� �ּ�</label>
			<select name="ms_loc1" id="ms_loc1">
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
			<label>���ǿ���</label>
			<input type="radio" name="ms_boolean" id="ms_boolean" value="1">����
			<input type="radio" name="ms_boolean"id="ms_boolean"  value="0">���Ǿ���
			</p>
			<p>
			<label>�̹��� ����</label>
			<input name="mf_img" id="mf_img" type="file">
			</p>
			<p>
			<input type="submit" value="ȸ������">
			</p>
		</fieldset>
	</form>
</div>
<script>
$(function(){
   // ȸ�� ���̵� �ߺ� Ȯ��!
   $('#idChkBtn').click(function(){
      $.ajax({
         url:"idconfirm/idcheck?ms_id="+$('#ms_id').val(),
         success:function(data){
            console.log(data);
            if(data == 0){
               $('#target').show().css("color","blue").text("��밡��");
            } else{
               $('#target').show().css("color","red").text("�����");
            }
         }
      });
   });
});
</script>