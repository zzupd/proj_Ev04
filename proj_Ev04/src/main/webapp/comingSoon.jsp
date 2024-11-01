<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
// 오늘 날짜 산출
LocalDate objToday = LocalDate.now();
// out.print("objToday : " + objToday +"<br>");
// out.print("todayYear : " + objToday.getYear() +"<br>");
// out.print("todayMonth : " + objToday.getMonthValue() +"<br>");
// out.print("todayDate : " + objToday.getDayOfMonth() +"<br>");
String todayYear = String.valueOf(objToday.getYear());
String todayMonth = String.valueOf(objToday.getMonthValue());
String todayDate = String.valueOf(objToday.getDayOfMonth());

// Open 값 추출
String openDay = request.getParameter("openDay");
// out.print("openDay : " + openDay +"<br>");

int openYear = Integer.parseInt(openDay.substring(0, 4));
int openMonth = Integer.parseInt(openDay.substring(5, 7));
int openDate = Integer.parseInt(openDay.substring(8));

LocalDate objOpenDay = LocalDate.of(openYear, openMonth, openDate);


// 남은 날짜 산출
// 년도 기준 소요된 일수(.getDayOfYear())
int todayDayCount = objToday.getDayOfYear();
// out.print("todayDayCount : " + todayDayCount + "<br>");
//1월 1일부터 오늘까지 날짜의 수(=일수)

int openDayCount = objOpenDay.getDayOfYear();
// out.print("openDayCount : " + openDayCount);
// 1월 1일부터 오픈일까지 날짜의 수(=일수)

int remainDayCount = openDayCount - todayDayCount;
%>    
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>결과페이지</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="resWrap">
	
		<div class="datePrnArea">
			<span>Today</span>
			<input type="text" value="<%=todayYear %>" id="yearToday" class="yearPrn">
			<span>년</span>
			<input type="text" value="<%=todayMonth %>" id="monthToday" class="monthPrn">
			<span>월</span>
			<input type="text" value="<%=todayDate %>" id="dateToday" class="datePrn">
			<span>일</span>
		</div>
		<div class="datePrnArea">
			<span>Open</span>
			<input type="text" value="<%=openYear %>" id="yearOpen" class="yearPrn">
			<span>년</span>
			<input type="text" value="<%=openMonth %>" id="monthOpen" class="monthPrn">
			<span>월</span>
			<input type="text" value="<%=openDate %>" id="dateOpen" class="datePrn">
			<span>일</span>
		</div>
		
	
	
		<h1>COMING SOON</h1>
		
		<div id="resArea">
			오픈 <span id="res"><%=remainDayCount %></span>일전
		</div>
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    