<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="article">
	<div id="header2">
		<h1> ���� �Է� �׽�Ʈ</h1>
		<p id="time">2018-12-10</p>
	</div>
	<div id="content">
		<p>����� ���� ���� ������ </p>
		<form action="classcreate" method="post">
		<input type="text" name="tmNumber" value="1">
		<input type="text" name="mt_id" value="${mt_id }">
			<fieldset>
				<p>
					<label>���� ��:</label>
					<input type="text" name="c_title"> 
				</p>
				<p>
					<label>���� ������ :</label>
					<input type="text" name="c_name">
				</p>
				<p>
					<label>���� ������ :</label>
					<input type="text" name="c_date1">
				</p>
				<p>
					<label>���� ������ :</label>
					<input type="text" name="c_date2">
				</p>
				<p>
					<label>���� �ο� �� :</label>
					<input type="text" name="c_pnum">
				</p>
				<p>
					<label>���� ��ġ �� �ּ� :</label>
					<input type="text" name="c_loc1">
				</p>
				<p>
					<label>���� ��ġ �� �ּ� :</label>
					<input type="text" name="c_loc2">
				</p>
				<p>
					<label>���� �̹��� :</label>
					<input type="text" name="c_img">
				</p>
				<p>
					<label>���� ���� :</label>
					<input type="text" name="c_comment">
				</p>
				<p>
					<label>���� �о� :</label>
					<input type="text" name="c_category">
				</p>
				<p>
					<label>���� ������ :</label>
					<input type="text" name="c_price">
				</p>
				<p>
					<label>���� Ƚ�� :</label>
					<input type="text" name="c_count">
				</p>
				<p>
					<input type="submit" value="���� ����">
					<input type="button" id="cancle" value="���">
				</p>
			</fieldset>
		</form>
	</div>
</div>