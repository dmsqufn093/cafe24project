<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet"> 
<style type = "text/css">
   #title {
      text-align: center;
      font-family: 'Nanum Gothic', sans-serif;
   }
   #mainBtnDiv {
      text-align: center;
   }
   table {
      border-collapse: collapse;
   }
   table, tr, th, td {
      border: 1px solid black;
      margin: 0 auto;
   }
   th {
      text-align: center;
   }
   
</style>
</head>
<body>
	<h1 id="title"><%= request.getParameter("custId") %>님의 수강신청이 완료되었습니다.</h1>
	<table id="scheduleTb" width="570px;">
	   <tr bgcolor="skybule" >
	      <th>수강코드</th>
	      <th>과목코드</th>
	      <th>과목</th>
	      <th>학점</th>
	      <th>요일-교시</th>
	   </tr>
	   
	   <%
	   	String saveResult = request.getParameter("arrResult");
	   	String[] arrResult = saveResult.split(",");

	   	int cnt = 0;
	   	for(int i=0; i<arrResult.length; i++) {
	   		if(cnt == 5){
	   			cnt = 0;
	   %>			
	   <tr>
	   <% 
	   		}
	   %>
	   
	      <td><%= arrResult[i] %></td>
	   <%
	   		if(cnt == 5){
	   %>
	   </tr>
	   <%
	   			cnt=0;
	   		}
	   		cnt++;
	      }
	   %>
	</table>
	<br>
<div class="col-lg-12" align="center" style="font-weight:bold">총 신청 학점 : <%= request.getParameter("totCounter") %></div><br>
<div id="mainBtnDiv"><input type="button" value="메인페이지로 돌아가기" onclick = "location.href='/coursemain/Main.jsp'"></div>
</body>
</html>