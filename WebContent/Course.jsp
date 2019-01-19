<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cafe24project.SubjectVO" %>
<%@ page import="java.util.*" %>
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
   
    <%
    ArrayList a = (ArrayList)request.getAttribute("subjects");
      for(int i = 0; i < a.size(); i++) {
    	  SubjectVO subject = (SubjectVO)a.get(i);
     %> 
	<tr>
	    <td><%= subject.getClassCode() %></td>
	    <td><%= subject.getSubject() %></td>
	    <td><%= subject.getDay() %></td>
	    <td><%= subject.getPeriod() %></td>
	    <td><%= subject.getClassCode() %></td>
	    <td><input type="button" class="checkBtn" value="신청"></td>
	</tr>
	<% } %>
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
<script type="text/javascript">
$(".checkBtn").click(function(){ 
	
	var str = ""
	var tdArr = new Array();	// 배열 선언
	var checkBtn = $(this);
	
	// checkBtn.parent() : checkBtn의 부모는 <td>이다.
	// checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
	var tr = checkBtn.parent().parent();
	var td = tr.children();
	
	console.log("클릭한 Row의 모든 데이터 : "+tr.text());
	
	var no = td.eq(0).text();
	var userid = td.eq(1).text();
	var name = td.eq(2).text();
	var email = td.eq(3).text();
	
	
	// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
	td.each(function(i){	
		tdArr.push(td.eq(i).text());
	});
	
	console.log("배열에 담긴 값 : "+tdArr);
	
	str +=	" * 클릭된 Row의 td값 = No. : <font color='red'>" + no + "</font>" +
			", 아이디 : <font color='red'>" + userid + "</font>" +
			", 이름 : <font color='red'>" + name + "</font>" +
			", 이메일 : <font color='red'>" + email + "</font>";		
	
	$("#ex2_Result1").html(" * 클릭한 Row의 모든 데이터 = " + tr.text());		
	$("#ex2_Result2").html(str);	
});

</script>