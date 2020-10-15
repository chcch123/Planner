<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지</title>
</head>
<style>
    .hj_m1{
        background-color: none;
        border: white;
        font-size: 25px;
        list-style: none;
        float: left;
    }
    .hj_m1>a{
        color: black;
        text-decoration: none;
    }
    .hj_m2{
        font-size: 18px;
        list-style: none;
        float: left;
        color: black;
        text-decoration: none;
        vertical-align: text-bottom;
        
    }
    .hj_m2>a{
        color: black;
        text-decoration: none;
        
    }
    #mypage{
    	float: right;
    }
    #log-out{
    	float: right;
    }
</style>
<body>
    <div align="center" >
        <ul id="hj_menu">
            <li class=hj_m1><a href="http://52.14.162.119:8080/planner/">HUMAN<br>&nbsp;&nbsp;&nbsp;&nbsp;PLAN&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <br><li class=hj_m2><a href="hj_plan">&nbsp;&nbsp;&nbsp;&nbsp;일정 만들기&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li class=hj_m2><a href="tripInfo">여행정보&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li class=hj_m2><a href="hj_yplan">인기 여행일정 및 후기&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li class=hj_m2><a href="qnaList">게시판&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <div id=log-out>
            	<li class=hj_m2><a href="logout"><img src="/planner/resources/nolock.png" width="45px" height="40px">&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
    		</div>
    		<div id=mypage>
            	<li class=hj_m2><a href="hj_my"><img src="/planner/resources/m_iconM.png" width="70px" height="60px">&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
    		</div>
        </ul>
    </div>
    <br><br>
    <div style=" background-color: black; width: 100%; height: 6px;"></div>
    
    
    
    
    
    
</body>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script language="javascript">
</script>  
</html>