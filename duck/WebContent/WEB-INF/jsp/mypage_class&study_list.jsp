<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="article">
	<div id="header2">
		<h1>��ٱ��� - �̴���</h1>
	</div>
	<div id="content">
	<fieldset>
		<legend>���͵� ��ٱ��� ���</legend>
		<table>
			<thead>
				<tr>
					<th colspan="14"> ���͵� ��ٱ��� ���</th>
				</tr>
				<tr>
					<td></td>
					<td>���͵��</td>
					<td>�ۼ���</td>
					<td>�з�</td>
					<td>�ּ�</td>
					<td>������</td>
					<td>������</td>
					<td>Ƚ��</td>
					<td>�ο�</td>
					<td>�ݾ�</td>
				</tr>
			</thead>
			<tbody>
			<%-- <c:set var="amt" value="${bagnum}"/> --%>
				<c:forEach var="e" items="${slvolist}">
					<tr>
						<td><a href=""> 
						<img src="resources/images/${e.s_img }">
						</a></td>
						<td><a href="selectOneStudy?num=${e.s_num }">${e.s_title}</a></td>
						<td>${e.ms_name}</td>
						<td>${e.s_category}</td>
						<td>${e.s_loc1}</td>
						<td>${e.s_date1}</td>
						<td>${e.s_date2}</td>
						<td>${e.s_count}</td>
						<td>${e.s_pnum}</td>
						<td>${e.s_price}</td>
						<%-- <td><a href="deleteStudy_list?num=${e.sl_num}">����</a></td>
						<td><a href="updateStudy_list?num=${e.sl_num}&&buynum=2&&price=${e.s_price}">����</a></td> --%>
					</tr>
				</c:forEach>
<!-- 				<tr>
             		<td colspan="5" width="100%">�� ��ǰ���� <strong id="tot_price"></strong>�� </td>
            	</tr>
            	
          		<tr>
             		<td colspan="5">�� �ֹ� ��ǰ�� <strong id="tot_amount"></strong>��(��)</td>
          		</tr> -->
			</tbody>
		</table>
		</fieldset>
	</div>
	<div>
	<fieldset>
		<legend>���� ��ٱ��� ���</legend>
		<table>
			<thead>
				<tr>
					<th colspan="15">���� ��ٱ��� ��� </th>
				</tr>
				<tr>
						<td></td>
						<td>���Ǹ�</td>
						<td>�����</td>
						<td>�о�</td>
						<td>��ġ</td>
						<td>������</td>
						<td>������</td>
						<td>Ƚ��</td>
						<td>�ο�</td>
						<td>���</td>
					</tr>
				</thead>
				<tbody>
				<c:set var="amt" value="${bagnum}"/>
					<c:forEach var="listv" items="${scvolist }">
						<tr>
							<td><a href=""> 
							<img src="resources/images/${listv.c_img}">
							</a></td>
							<td>
								<a href="selectoneclass?num=${listv.c_num }"
								style="color: gray;">${listv.c_title }</a>
							</td>
							<td>${listv.c_name }</td>
							<td>${listv.c_category}</td>
							<td>${listv.c_loc1 }</td>
							<td>${listv.c_date1 }</td>
							<td>${listv.c_date2 }</td>
							<td>${listv.c_count}</td>
							<td>${listv.c_pnum }</td>
							<td>${listv.c_price }</td>
							<%-- <td><a href="deleteClass_list?num=${listv.sc_num}">����</a></td>
							<td><a href="updateClass_list?num=${listv.sc_num}&&buynum=2&&price=${listv.c_price }">����</a></td> --%>
						</tr>
					</c:forEach>
				</tbody>
		</table>
		</fieldset>
	</div>
</div>

<script>
// ��� �������� �ε��� �� �Ŀ� ȣ��Ǵ� �޼���
$(function(){
	    
});
</script>
