<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div>
	<fieldset>
		<legend>���Ǹ� ���� ���� �˻� ����Դϴ�.</legend>
		<table style="width: 70%">
			<thead>
				<tr style="background: pink; height: 50px">
					<th>�����</th>
					<th>���Ǹ�</th>
					<th>����</th>
					<th>Ȱ������</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="e" items="${clist}">
					<tr style="text-align: center;">
						<td>${e.c_name}</td>
						<td>${e.c_title}</td>
						<td>${e.c_date1}- ${e.c_date2}</td>
						<td>${e.c_loc2}</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<th colspan="4">�˻���</th>
				</tr>
			</tfoot>
		</table>
	</fieldset>
</div>
