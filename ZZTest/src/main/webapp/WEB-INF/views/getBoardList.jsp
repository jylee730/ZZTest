<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
	border: 3px solid;
    border-collapse: collapse;
	position:relative;
	width:70%;
	height:50%;
	margin-left:15%;
	text-align: center;	
	}
	th{
	background-color: #bbdefb;
	border: 1px solid;
    border-collapse: collapse;
	bgcolor: red;
	padding: 10px;
	}
	td{
	background-color: #e3f2fd;
	border: 1px solid;
    border-collapse: collapse;
	bgcolor: red;
	padding: 10px;
	}
</style>
</head>
<body>
	<br><br>
	<h1 style="text-align: center">게시글 목록</h1>
	<br><br><hr><br><br>
	<table>
		<tr>
			<th width="10%">번호</th>
			<th width="55%">제목</th>
			<th width="15%">글쓴이</th>
			<th width="10%">등록일</th>
			<th width="10%">조회</th>
		</tr>
		<c:forEach items="${boardList}" var="board">
		<tr>
			<td>${board.seq}</td>
			<td><a href="getBoard.do?seq=${board.seq}">${board.title}</a></td>
			<td>${board.writer}</td>
			<td><fmt:formatDate value="${board.regDate}" pattern="yy-MM-dd"/></td>
			<td>${board.cnt}</td>
		</tr>
		</c:forEach>
	</table>
	<br> <a href="insertBoard.do">새글 등록</a>
</body>
</html>