<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
	<ul>
		<li><a href="./">Home</a></li>
		<!-- ������ ������ : �α׾ƿ�, ������ ������ : �α��� -->
		<c:if test="${empty ms_id}">
		<c:if test="${empty mt_id}">
		<li><a href="choiseRegister">ȸ������</a></li>
		<li><a href="choiseLogin">�α���</a></li>
		</c:if></c:if>
		
		<c:if test="${not empty ms_id}">
		<li>
		<a href="modify_m_student">ȸ������</a></li>
		<li>
		<a href="logout">�α׾ƿ�</a></li>
		<li><a href="create_study">���͵� �Խ���</a></li>
		</c:if>
		
		<c:if test="${not empty mt_id}">
		<li>
		<a href="modify_m_teacher">���� ȸ������</a></li>
		<li>
		<a href="teacher_logout">�α׾ƿ�</a></li>
		</c:if>
		
		<!-- ���� -->
		<li><a href="showclasslist?page=1">���� �Խ���</a></li>
		<li><a href=da_HW>��������</a></li>
		<li><a href="blockForm">�Ű� ���� CRUD</a></li>
		
		<c:if test="${not empty ms_id}">
		<li>${ms_id } �� ȯ���մϴ٢�</li>
		</c:if>
		
		<c:if test="${not empty mt_id}">
		<li>${mt_id } ����� ȯ���մϴ٢�</li>
		</c:if>
	</ul>
