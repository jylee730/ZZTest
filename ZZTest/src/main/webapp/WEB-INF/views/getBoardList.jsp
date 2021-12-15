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
	padding: 10px;	
	}
	td{
	background-color: #e3f2fd;
	border: 1px solid;
    border-collapse: collapse;
	padding: 10px;
	}
	.newone-wrap{
	padding:0;
	text-align:center;
	font-size: 18px;
	position:relative;
	width:85px;
	height:28px;
	margin-left:80%;
	border: 2px solid;
	background-color: #bbdefb;
	border-radius: 25px;
	}
	a{
	font-weight:bold;
	text-decoration-line: none;
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
			<!-- 제목 셀 클릭시 이동하게 만들기 -->
			<td style="cursor:pointer;" onClick="location.href='getBoard.do?seq=${board.seq}'">${board.title}</td>
			<td>${board.writer}</td>
			<td><fmt:formatDate value="${board.regDate}" pattern="yy-MM-dd"/></td>
			<td>${board.cnt}</td>
		</tr>
		</c:forEach>
	</table>
	<br>
	<div class="newone-wrap"><a href="insertBoard.do" class="newone">새글 등록</a></div>
</body>
</html>