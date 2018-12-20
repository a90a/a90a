<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
	<ul>
		<li><a href="./">Home</a></li>
		<!-- 세션이 있으면 : 로그아웃, 세션이 없으면 : 로그인 -->
		<c:if test="${empty ms_id}">
		<c:if test="${empty mt_id}">
		<li><a href="choiseRegister">회원가입</a></li>
		<li><a href="choiseLogin">로그인</a></li>
		</c:if></c:if>
		
		<c:if test="${not empty ms_id}">
		<li>
		<a href="modify_m_student">회원수정</a></li>
		<li>
		<a href="logout">로그아웃</a></li>
		<li><a href="create_study">스터디 게시판</a></li>
		</c:if>
		
		<c:if test="${not empty mt_id}">
		<li>
		<a href="modify_m_teacher">강사 회원수정</a></li>
		<li>
		<a href="teacher_logout">로그아웃</a></li>
		</c:if>
		
		<!-- 공통 -->
		<li><a href="showclasslist?page=1">강좌 게시판</a></li>
		<li><a href=da_HW>다혜숙제</a></li>
		<li><a href="blockForm">신고 관련 CRUD</a></li>
		
		<c:if test="${not empty ms_id}">
		<li>${ms_id } 님 환영합니다♥</li>
		</c:if>
		
		<c:if test="${not empty mt_id}">
		<li>${mt_id } 강사님 환영합니다♥</li>
		</c:if>
	</ul>
