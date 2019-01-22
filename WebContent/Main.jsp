<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
   #title {
      text-align: center;
      font-family: 'Nanum Gothic', sans-serif;
   }
   form {
      text-align: center;
   }
</style>
</head>
<body>
<h1 id="title">로그인 화면 </h1>
 	<form action="coursemain" method="post">
        <label>아이디 : </label>
        <input name="id" type="text"><br><br>
        <input type="button" value="로그인" onclick="javascript:loginBtn(this.form);">
    </form>
<script type="text/javascript">
function loginBtn(frm){
	if(frm.id.value == ''){
		alert("아이디 값을 입력해주세요.");
		return;
	}
	frm.submit();
}
</script>
</body>
</html>