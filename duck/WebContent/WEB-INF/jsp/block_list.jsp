<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="article">
	<div id="header2">
		<h1>${blist }</h1>
		<fieldset><legend>�Ű� �Խ���</legend>
		<table id="tablesheet">
		<thead>
		<tr>
		<th>��ȣ</th>
		<th>�Ű���ѳ༮</th>
		<th>�з�</th>
		<th>����</th>
		<th>�Ű�</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="e" items="${blist }">
		<tr>
			<td>${e.b_num }</td>
			<td><a href="selectOneBlock?b_num=${e.b_num }">${e.b_title }</a></td>
			<td>${e.b_category }</td>
			<td>${e.b_id }</td>
			<td>${e.b_date }</td>
			<td><a href="deleteBlock?b_num=${e.b_num }">�����ϱ�</a></td>
		</tr>
		</c:forEach>
		</tbody>
		<tfoot>
		<tr>
		<td colspan="5"><hr></td>
		<tr>
		<td colspan="5" style="text-align: center;"><a href="blockForm">blockForm���� ����</a></td>
		</tr>
		</tfoot>
		</table>
		</fieldset>
	</div>
	
</div>


<script>
	$(function(){
		
	});
</script>