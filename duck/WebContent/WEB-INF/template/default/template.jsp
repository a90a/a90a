<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Kosta188</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/basic.css" type="text/css">
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
</head>
<body>
	<div id="wrap">
		<tiles:insertAttribute name="header"/>
			<div id="navigation">
				<tiles:insertAttribute name="menu" />
			</div>
				<tiles:insertAttribute name="body" />
			<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>