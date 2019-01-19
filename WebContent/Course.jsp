<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1><%= request.getParameter("id") %>님의 수강신청 페이지</h1>

<table border="1">
	<th colspan="6">수강신청 시간표</th>
	<tr align = "center" bgcolor="skybule">
		<td>수강코드</td>
		<td>과목코드</td>
		<td>과목</td>
		<td>요일</td>
		<td>교시</td>
		<td>수강신청</td>
    </tr>
	<tr>
	    <td>1234</td>
	    <td>두번째 칸</td>
	    <td>1234</td>
	    <td>두번째 칸</td>
	    <td>1234</td>
	    <td>두번째 칸</td>
	</tr>
</table>
    
    
<table cellspacing="5" align="center" border="1" bordercolor="#5CD1E5" width="550" height="600">
	<p></p>
	
    
    
		<caption>
			<font size="5" face="굴림"><font color="#fece00">Ti</font><font
				color="#fe8c14">me </font><font color="#8cca2d">Ta</font><font
				color="#4daace">ble</font>
			</font>
		</caption>
		<tr align="center">
			<td width="50"></td>
			<td width="100" bgcolor="#5CD1E5">월</td>
			<td width="100" bgcolor="#5CD1E5">화</td>
			<td width="100" bgcolor="#5CD1E5">수</td>
			<td width="100" bgcolor="#5CD1E5">목</td>
			<td width="100" bgcolor="#5CD1E5">금</td>
		</tr>

	  
		<tr align="center">
			<td bgcolor="#5CD1E5">1</td>
			<td></td>
			<td bgcolor="#5CD1E5">전산실무</td>
			<td></td>
			<td></td>ß
			<td></td>
		</tr>
 	
		<tr align="center">
			<td bgcolor="#5CD1E5">2</td>
			<td></td>
			<td bgcolor="#5CD1E5">포토샾</td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<tr align="center">
			<td bgcolor="#5CD1E5">3</td>
			<td bgcolor="#5CD1E5">플레시</td>
			<td bgcolor="#5CD1E5">포토샾</td>
			<td bgcolor="#5CD1E5">플래시</td>
			<td></td>
			<td bgcolor="#5CD1E5">컴퓨터그래픽</td>
		</tr>

		<tr align="center">
			<td bgcolor="#5CD1E5">4</td>
			<td bgcolor="#5CD1E5">플래시</td>
			<td></td>
			<td></td>
			<td bgcolor="#5CD1E5">전산개론</td>
			<td bgcolor="#5CD1E5">컴퓨터그래픽</td>
		</tr>

		<tr align="center">
			<td bgcolor="#5CD1E5">5</td>
			<td></td>
			<td bgcolor="#5CD1E5">전산개론</td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<tr align="center">
			<td bgcolor="#5CD1E5">6</td>
			<td></td>
			<td bgcolor="#5CD1E5">전산개론</td>
			<td bgcolor="#5CD1E5">웹디자인</td>
			<td></td>
			<td bgcolor="#5CD1E5">웹디자인</td>
		</tr>

		<tr align="center">
			<td bgcolor="#5CD1E5">7</td>
			<td bgcolor="#5CD1E5">웹디자인</td>
			<td></td>
			<td bgcolor="#5CD1E5">웹디자인</td>
			<td bgcolor="#5CD1E5">운영체제</td>
			<td></td>
		</tr>

		<tr align="center">
			<td bgcolor="#5CD1E5">8</td>
			<td></td>
			<td></td>
			<td></td>
			<td bgcolor="#5CD1E5">운영체제</td>
			<td></td>
		</tr>

		<tr align="center">
			<td></td>
			<td colspan="5" bgcolor="#5CD1E5">충북대학교 청년취업아카데미<br> 담당교수 :
				강 재 구
			</td>
		</tr>
	</table>

</body>
</html>