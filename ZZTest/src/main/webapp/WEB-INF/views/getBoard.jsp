<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE>
<html>
<head>
<style>
	table{
	border: 3px solid;
    border-collapse: collapse;
	position:relative;
	width:40%;
	height:50%;
	margin-left:30%;
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
	padding:5px;
	text-align:center;
	font-size: 18px;
	border: 2px solid;
	background-color: #bbdefb;
	border-radius: 10px;
	}
	a{
	color:black;
	font-weight:bold;
	text-decoration-line: none;
	}
	
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
</head>
<body>
		<br><br>
		<h1 style="text-align: center">글 상세</h1>
		<br><br><hr><br><br>
		<form action="updateBoard.do" method="post">
			<input name="seq" type="hidden" value="${board.seq}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td style="background: #bbdefb;width: 70px">제목</td>
					<td align="left"><input style="background-color: #e3f2fd;border-style: none;" name="title" type="text"
						value="${board.title }" /></td>
				</tr>
				<tr>
					<td style="background: #bbdefb">작성자</td>
					<td align="left">${board.writer }</td>
				</tr>
				<tr>
					<td style="background: #bbdefb">내용</td>
					<td align="center"><textarea style="background-color: #e3f2fd;border-style: none;" name="content" cols="90%" rows="10">${board.content}</textarea></td>
				</tr>
				<tr>	
					<td style="background: #bbdefb">등록일</td>
					<td align="left">${board.regDate }</td>
				</tr>
				<tr>
					<td style="background: #bbdefb">조회수</td>
					<td align="left">${board.cnt }</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input style="cursor:pointer;padding:5px;text-align:center;font-size: 18px;border: 2px solid;background-color: #bbdefb;border-radius: 10px;" type="submit"
						value="글 수정" /></td>
				</tr>
			</table>
		</form>
		<hr>
		<br>
			<div align="center">
				<span class="newone-wrap"><a href="insertBoard.do">등록</a></span>&nbsp;&nbsp;&nbsp; 
				<span class="newone-wrap"><a href="deleteBoard.do?seq=${board.seq }">삭제</a></span>&nbsp;&nbsp;&nbsp;
				<span class="newone-wrap"><a href="getBoardList.do">목록</a></span>
			</div>
</body>
</html>
