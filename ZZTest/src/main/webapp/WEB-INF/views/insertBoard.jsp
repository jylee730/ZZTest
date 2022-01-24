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
<title>글 등록</title>
</head>
<body>
		<br><br>
		<h1 style="text-align: center">글 등록</h1>
		<br><br><hr><br><br>
		<form action="saveBoard.do" method="post">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td style="background: #bbdefb;width: 70px">제목</td>
					<td align="left"><input style="background-color: #e3f2fd;borde0r-style: none;" name="title" type="text"/></td>
				</tr>
				<tr>
					<td style="background: #bbdefb">작성자</td>
					<td align="left"><input style="background-color: #e3f2fd;borde0r-style: none;" name="writer" type="text"/></td>
				</tr>
				<tr>
					<td style="background: #bbdefb">내용</td>
					<td align="center"><textarea style="background-color: #e3f2fd;border-style: none;" name="content" cols="90%" rows="10"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input id="testbtn" style="cursor:pointer;padding:5px;text-align:center;font-size: 18px;border: 2px solid;background-color: #bbdefb;border-radius: 10px;" type="submit"
						value="등록" onclick="alert('등록완료')"/>
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<br>
			<div align="center">
				<span class="newone-wrap"><a href="getBoardList.do">목록</a></span>
			</div>
</body>
</html>
