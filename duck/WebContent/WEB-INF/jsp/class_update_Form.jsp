<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="article">
	<div id="header2">
		<h1> ���� ���� �󼼺���</h1>
		<p id="time">2018-12-10</p>
	</div>
	<div id="content">
		<p>����� ���� ���� ������ </p>
		<form action="updateclass" method="post">
			<fieldset>
				<p>
					<label>���� ��ȣ:</label>
					<input type="text" name="c_num" value="${cvo.c_num }" readonly="readonly"> 
				</p>
				<p>
					<label>���� ��:</label>
					<input type="text" name="c_title" value="${cvo.c_title }"> 
				</p>
				<p>
					<label>���� ������ :</label>
					<input type="text" name="c_name" value="${cvo.c_name }">
				</p>
				<p>
					<label>���� ������ :</label>
					<input type="text" name="c_date1" value="${cvo.c_date1 }">
				</p>
				<p>
					<label>���� ������ :</label>
					<input type="text" name="c_date2" value="${cvo.c_date2 }">
				</p>
				<p>
					<label>���� �ο� �� :</label>
					<input type="text" name="c_pnum" value="${cvo.c_pnum }"> 
				</p>
				<p>
					<label>���� ��ġ �� �ּ� :</label>
					<input type="text" name="c_loc1" value="${cvo.c_loc1 }">
				</p>
				<p>
					<label>���� ��ġ �� �ּ� :</label>
					<input type="text" name="c_loc2" value="${cvo.c_loc2 }">
				</p>
				<p>
					<label>���� �̹��� :</label>
					<input type="text" name="c_img"  value="${cvo.c_img }">
				</p>
				<p>
					<label>���� ���� :</label>
					<input type="text" name="c_comment"  value="${cvo.c_comment }">
				</p>
				<p>
					<label>���� �о� :</label>
					<input type="text" name="c_category"  value="${cvo.c_category }">
				</p>
				<p>
					<label>���� ������ :</label>
					<input type="text" name="c_price"  value="${cvo.c_price }">
				</p>
				<p>
					<label>���� �� Ƚ�� :</label>
					<input type="text" name="c_count"  value="${cvo.c_count }">
				</p>
				<p>					
					<input type="submit" id="rewriteBtn" value="�����ϱ�">		
					<input type="button" id="cancleBtn" value="����ϱ�">		
				</p>
			</fieldset>
		</form>
	</div>
</div>