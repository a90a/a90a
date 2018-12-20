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
				<c:forEach var="e" items="${classList}">
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
	<fieldset>
		<legend>����� ���� ���� �˻� ����Դϴ�.</legend>
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
				<c:forEach var="e" items="${teacherList}">
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
	<fieldset>
		<legend>���͵� �˻� ����Դϴ�.</legend>
		<table style="width: 70%">
			<thead>
				<tr style="background: pink; height: 50px">
					<th>�̹���</th>
					<th>���͵� ����</th>
					<th>�з�</th>
					<th>���͵� ����</th>
					<th>����</th>
					<th>�ο�</th>
					<th>����</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="e" items="${studyList}">
					<tr style="text-align: center;">
					<td><img style="margin: 10px; height: 10px; border: 1px dotted black;"
							src="resources/images/${e.s_img}"></td>
						<td>${e.s_title}</td>
						<td>${e.s_category }</td>
						<td>${e.s_loc1}</td>
						<td>${e.s_date1 } - ${e.s_date2 }</td>
						<td>${e.s_pnum }</td>
						<td>${e.s_price }</td> 
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
