<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <div>
	<fieldset>
			<legend>���� ����(����) ���</legend>
			<table>
				<thead>
				<tr>
					<th>���ǹ�ȣ</th>
					<th>���Ǹ�</th>
					<th>�����</th>
					<th>������</th>
					<th>������</th>
					<th>�з�</th>
					<th>����</th>
				</tr>
				</thead>

				<tfoot>
					<tr><td colspan="6">
					</td></tr>
				</tfoot>

	 			<tbody>
	 			<c:forEach var="e" items="${tcvo}">
	 			<c:forEach var="q" items="${e.cvo}">
	 			<tr>
	 			<td>${e.tc_num }</td>
	 			<td>${e.c_title }</td>
	 			<td>${q.c_name }</td>
	 			<td>${q.c_date1 }</td>
	 			<td>${q.c_date2 }</td>
	 			<td>${q.c_category }</td>
	 			<td>${q.c_price }</td>
	 			<td><a href="deleteTc_list?tc_num=${e.tc_num }&&mt_id=${mt_id}">������ư</a></td>
	 			</c:forEach>
  				</c:forEach> 
	 			</tbody>
	
  	</table>
  	</fieldset>
    </div>