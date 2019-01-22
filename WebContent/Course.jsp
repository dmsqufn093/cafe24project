<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cafe24project.SubjectVO" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src = "https://code.jquery.com/jquery-3.3.1.min.js" ></script>
<title>Insert title here</title>
<style type="text/css">
   #title {
      text-align: center;
      font-family: 'Nanum Gothic', sans-serif;
   }
   #scheduleTb tr {
      margin: auto;
   }
   table {
      margin: auto;
      width: 750px;
   }
   #scheduleTb  #scheduleTbFirstTr th {
      width: 100px;
      background-color: #5CD1E5;
   }
   #scheduleTb {
      width: 550px;
      height: 580px;
      padding: 5px;
      text-align: center;
   }
   #scheduleTb, #scheduleTb tr, #scheduleTb th, #scheduleTb td {
      border: 1px solid;
      margin: 0 auto;
   }
   #savebtnDiv {
      
      padding-top: 5px;
      padding-bottom: 10px;
   }
   table {
      border-collapse: collapse;
   }
</style>
</head>
<body>
<h1 id="title"><%= request.getParameter("id") %>님의 수강신청 페이지</h1>

<form name="form" method="post" action="Final.jsp">
<div>과목명 : <input type="text" name="findClass" id="findClass"></div><br>
<div>
<table border="1" id="courseTb" style="float: left">
	<thead>
		<tr><th colspan="7">수강신청 시간표</th></tr>
		<tr align = "center" bgcolor="skybule">
			<td>수강코드</td>
			<td>과목코드</td>
			<td>과목</td>
			<td>학점</td>
			<td>요일-교시</td>
			<td>요일-교시</td>
			<td>요일-교시</td>
	    </tr>
    </thead>
   
   	<tbody>
    <%
    ArrayList a = (ArrayList)request.getAttribute("subjects");
      for(int i = 0; i < a.size(); i++) {
    	  SubjectVO subject = (SubjectVO)a.get(i);
     %> 
		<tr>
		    <td><%= subject.getClassCode() %></td>
		    <td><%= subject.getSubjectCode() %></td>
		    <td><%= subject.getSubject() %></td>
		    <td><%= subject.getCredit() %></td>
		    <td><%= subject.getDay01() %>-<%= subject.getPeriod01() %><input type="checkbox" name="chkbox" id="chkbox1<%= i%>" value="<%= subject.getCredit() %>" onClick="javascript:itemSum(this.form, 1<%= i%>);"></td>
		    <td><%= subject.getDay02() %>-<%= subject.getPeriod02() %><input type="checkbox" name="chkbox" id="chkbox2<%= i%>" value="<%= subject.getCredit() %>" onClick="javascript:itemSum(this.form, 2<%= i%>);"></td>
		    <td><%= subject.getDay03() %>-<%= subject.getPeriod03() %><input type="checkbox" name="chkbox" id="chkbox3<%= i%>" value="<%= subject.getCredit() %>" onClick="javascript:itemSum(this.form, 3<%= i%>);"></td>
		    <!--  <td><input type="button" class="checkBtn" value="신청"></td>-->
		</tr>
	</tbody>
	<div class="col-lg-12" id="ex2_Result"></div> 
	<% } %>
	<div class="col-lg-12" style="font-weight:bold">총 신청 학점 : <span id="counter" name="counter"></span> 학점</div>
	<div id="savebtnDiv"><input type="button" name="savebtn" id="savebtn" value="수강신청" onClick="javascript:saveBtn(this.form);"></div>
</table>

    
<table id="scheduleTb">
  <caption>
     <font size="5" face="굴림"><font color="#fe8c14">Time Table</font>
  </caption>
  <tr id="scheduleTbFirstTr">
     <td width="50"></td>
     <th>월</th>
     <th>화</th>
     <th>수</th>
     <th>목</th>
     <th>금</th>
  </tr>
	<%
	  int period = 8;
	  int week = 5;
	  
	  for(int i = 1; i <= period; i++) {
	%>	
    <tr>
       <td><%= i %>교시</td>
	    <%            
	    for(int j = 1; j <= week; j++) {
	       switch(j) {
	          case 1:
	             %>
	             <td id="mon<%= i %>"></td>
	             <%
	             break;
	           	 case 2:
	             %>
	             <td id="tues<%= i %>"></td>
	             <%
	              break;
	              case 3:
	             %>
	             <td id="wed<%= i %>"></td>
	             <%
	              break;
	              case 4:
	             %>
	             <td id="thurs<%= i %>"></td>
	             <%
	             break;
	             case 5:
	             %>
	             <td id="fri<%= i %>"></td>
	             <%
	             break;
	             default:
	             break;
	         }
	    }
	    %>
    </tr>
 <%
     }
 %>

</table>
</div>
<input type="hidden" name="arrResult" id="arrResult" value="" >
<input type="hidden" name="custId" id="custId" value="<%= request.getParameter("id") %>" >
<input type="hidden" name="totCounter" id="totCounter" value="" >
</form>
<script type="text/javascript">
//var count = 0;
$(document).ready(function() {
    $("#findClass").keyup(function() {
    	var findVal = $(this).val();
        $("#courseTb > tbody > tr").hide();
        var temp = $("#courseTb > tbody > tr > td:nth-child(5n+3):contains('" + findVal + "')");
        $(temp).parent().show();
    })
});

function itemSum(frm, selectVal){
	var sum = 0;
    var count = frm.chkbox.length;
    var str = "";
	var tdArr = new Array();	// 배열 선언
	var checkBtn = $("#chkbox"+selectVal);
	
	// checkBtn.parent() : checkBtn의 부모는 <td>이다.
	// checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
	var tr = checkBtn.parent().parent();
	var td = tr.children();
	
	var classCode = td.eq(0).text();
	var subjectCode = td.eq(1).text();
	var subject = td.eq(2).text();
	var credit = checkBtn.parent().parent().children().eq(3).text();
	var day = checkBtn.parent().text();
	
	var dayOfDay = day.substring(0,3);
	var dayFirstTime = day.substring(4,5);
	var daySecondTime = day.substring(6,7);

	if(credit < 3){ //신청 학점이 3학점 미만일 경우
		var chkcnt = 0;
		for(var i=0; i < count; i++ ){
		    if( frm.chkbox[i].checked == true ){
		    	var classcodes =  frm.chkbox[i].parentElement.parentElement.children[0].firstChild.textContent
		    	
		    	console.log("classcodes: " + classcodes + "...classCode: " + classCode);
		    	if(classcodes == classCode){
					chkcnt++;
				}
		    }
		}
		
		if(chkcnt > 1){
			alert("1-2학점은 한 번만 선택가능합니다.");
			$('input:checkbox[id=chkbox'+selectVal+']').prop('checked', false);
			return;
		}
	}
	
	//중복 시간 체크
	var chkcnt = 0;
	var orgsel = "chkbox"+selectVal;
	for(var i=0; i < count; i++ ){
	    if( frm.chkbox[i].checked == true && orgsel != frm.chkbox[i].id){
	    	var dayOfDays = frm.chkbox[i].parentElement.textContent.substring(0, 3); // 요일
	    	var dayFirstTimes = frm.chkbox[i].parentElement.textContent.substring(4,5); //첫번째 교시
	    	var daySecondTimes = frm.chkbox[i].parentElement.textContent.substring(6,7); //두번째 교시
	    	
	    	
	    	if(dayOfDay == dayOfDays){
	    		if(dayFirstTime == dayFirstTimes || dayFirstTime == daySecondTimes || daySecondTime == dayFirstTimes || daySecondTime == daySecondTimes){
	    			chkcnt++;
	    		}
			}
	    }
	}
	if(chkcnt > 0){
		alert("중복된 시간을 선택하셨습니다.");
		$('input:checkbox[id=chkbox'+selectVal+']').prop('checked', false);
		return;
	}
	
	//총 신청 학점
	for(var i=0; i < count; i++ ){
	    if( frm.chkbox[i].checked == true ){
	  		sum += parseInt(frm.chkbox[i].value);
	    }
	}
	$("#counter").text(sum);
	
	for(var i=0; i < count; i++ ){
	    if( frm.chkbox[i].checked == true ){
	  		str += " 선택한 수강신청 = 수강코드 : <font color='red'>" + frm.chkbox[i].parentElement.parentElement.children[0].firstChild.textContent + "</font>" +
	  		", 과목코드 : <font color='red'>" + frm.chkbox[i].parentElement.parentElement.children[1].firstChild.textContent + "</font>" +
	  		", 과목 : <font color='red'>" + frm.chkbox[i].parentElement.parentElement.children[2].firstChild.textContent + "</font>" +
	  		", 학점 : <font color='red'>" + frm.chkbox[i].parentElement.parentElement.children[3].firstChild.textContent + "</font>" +
	  		", 요일-교시 : <font color='red'>" + frm.chkbox[i].parentElement.textContent + "</font><br>";	
	    }
	}
	
	//체크 박스 선택 시 시간표에 색칠
	var period01 = "";
	var period02 = "";
	
	if ("월요일" == dayOfDay) {
	   period01 = "mon"+dayFirstTime;
	   period02 = "mon"+daySecondTime;
	} else if ("화요일" == dayOfDay) {
	   period01 = "tues"+dayFirstTime;
	   period02 = "tues"+daySecondTime;
	} else if ("수요일" == dayOfDay) {
	   period01 = "wed"+dayFirstTime;
	   period02 = "wed"+daySecondTime;
	} else if ("목요일" == dayOfDay) {
	   period01 = "thurs"+dayFirstTime;
	   period02 = "thurs"+daySecondTime;
	} else if ("금요일" == dayOfDay) {
	   period01 = "fri"+dayFirstTime;
	   period02 = "fri"+daySecondTime;
	} else {
	   console.log("error");
	}
	var color = '#'; 
	var letters = ['a29bfe', '74b9ff', '00cec9', 'ff7675', 'fdcb6e', 'b2bec3', 'ff7979', 'badc58', 'dff9fb'];
	color += letters[Math.floor(Math.random() * letters.length)];
	
	if(checkBtn[0].checked) {
	   $("#"+period01+"").css("background-color",color);
	   $("#"+period02+"").css("background-color",color);
	   $("#"+period01+"").text(subject);
	   $("#"+period02+"").text(subject);
	} else {
	   $("#"+period01+"").css("background-color","transparent");
	   $("#"+period02+"").css("background-color","transparent");
	   $("#"+period01+"").text("");
	   $("#"+period02+"").text("");
	}
	   
	$("#ex2_Result").html(str);
}

function saveBtn(frm){
	var tatCount = Number($("#counter").text());
	var count = frm.chkbox.length;
	var arrResult = new Array();
	
	for(var j=0; j<count; j++){
		var credit = frm.chkbox[j].parentElement.parentElement.children[3].firstChild.textContent;
		var classCode = frm.chkbox[j].parentElement.parentElement.children[0].firstChild.textContent;
	
		if(credit >= 3){ //신청 학점이 3학점 이상일 경우
			var chkcnt = 0;
			for(var i=0; i < count; i++ ){
			    if( frm.chkbox[i].checked == true ){
			    	var classcodes =  frm.chkbox[i].parentElement.parentElement.children[0].firstChild.textContent
			    	
			    	if(classcodes == classCode){
						chkcnt++;
					}
			    }
			}
			
			if(chkcnt < 2){
				alert("3학점은 주 2회 신청해야 합니다.");
				return;
			}
		}
	}
	
	if(tatCount < 18){
		alert("최소 신청 학점은 18학점입니다.");
		return;
	}else if(tatCount > 21){
		alert("최대 신청 학점은 21학점입니다.");
		return;
	}
	
	//배열에 담아서 전송
	var totCnt = 0;
	for(var i=0; i<count; i++){
		if(frm.chkbox[i].checked == true){
			var totResult = frm.chkbox[i].parentElement.parentElement.children[0].firstChild.textContent + ","
							+ frm.chkbox[i].parentElement.parentElement.children[1].firstChild.textContent + ","
							+ frm.chkbox[i].parentElement.parentElement.children[2].firstChild.textContent + ","
							+ frm.chkbox[i].parentElement.parentElement.children[3].firstChild.textContent + ","
							+ frm.chkbox[i].parentElement.textContent;
			
			arrResult[totCnt] = totResult;
	  		totCnt++;
		}
	}
	frm.arrResult.value = arrResult;
	frm.totCounter.value = tatCount;
    frm.submit();

}
</script>
</body>
</html>
