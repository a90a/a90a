<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <div>
	<fieldset>
			<legend>���͵� ���</legend>
			<table>
			<tr><td colspan="6">
					<p><label>��۵��</label>
					<form method="post" action="s_reviewInsert">
					���͵��ȣ
					<input type="text" id="s_num" name="s_num" value="���͵��ȣ"/><br>
					�����ھ��̵�
					<input type="text" id="ms_id" name="ms_id" value="�����ھ��̵�"/><br>
					����ھ��̵�
					<input type="text" id="s1_id" name="s1_id" value="����ھ��̵�"/><br>
					����
					<textarea rows="1" cols="10" name="s1_text" id="s1_text" ></textarea>
					<input type="submit" value="����Է�">
					</form>
					</td></tr>
				<thead>
				
				<tr>
					<th>���͵��</th>
					<th>����Է� ��</th>
					<th>���̵�</th>
					<th>����</th>
					<th>�Է��Ͻ�</th>
					<th>������ ���̵�</th>
				</tr>
				</thead>

					

	 			<tbody>
	 			<c:forEach var="e" items="${list}">
	 			<tr>
	 				<td> ${e.s_title} </td>
    				<td> ${e.ms_name} </td>
    				<td> ${e.s1_id} </td>
    				<td> ${e.s1_text} </td>
    				<td> ${e.s1_date} </td>
    				<td> ${e.ms_id} </td>
    				<td><a href="s_reviewDelete?s1_num=${e.s1_num}">���� ${e.s1_num}</a></td>
    				<td><a href="reviewDelete?s1_num=${e.s1_num}">����</a></td>
  				</c:forEach>
	 			</tbody>
	
  	</table>
  	</fieldset>
    </div>
    
