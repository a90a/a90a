<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <div>
	<fieldset>
			<legend>강사 개설(수강) 목록</legend>
			<table>
				<thead>
				<tr>
					<th>강의번호</th>
					<th>강의명</th>
					<th>강사명</th>
					<th>시작일</th>
					<th>종료일</th>
					<th>분류</th>
					<th>가격</th>
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
	 			<td><a href="deleteTc_list?tc_num=${e.tc_num }&&mt_id=${mt_id}">삭제버튼</a></td>
	 			</c:forEach>
  				</c:forEach> 
	 			</tbody>
	
  	</table>
  	</fieldset>
    </div>