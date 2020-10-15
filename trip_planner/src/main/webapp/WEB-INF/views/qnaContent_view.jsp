<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	<!-- JSTL라이브러리 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	<!-- fmt라이브러리 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A Content View</title>
</head>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Kufam:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/765d58648e.js" crossorigin="anonymous"></script>
<style>
    .narvar{
        margin:0;
        width:100%;
        height:40px;
        background-color:#1a7ad9;
      }
    .mainlogo{
       position:absolute;
       margin-left:-50px;
       top:8%;
     }
    .hj_m1{
        background-color: none;
        border: white;
        font-size: 35px;
        list-style: none;
        float: left;
        font-family: 'Kufam', cursive;
        padding-left:20px;
        
    }
    .hj_m1>a{
        color: black;
        text-decoration: none;
    }
    .hj_m2{
        font-size: 24px;
        list-style: none;
        float: left;
        color: rgb(32, 51, 65);
        text-decoration: none;
        vertical-align: text-bottom;
        padding-left:70px;
        font-weight: bold;
        font-family: 'Poor Story';
    }
    .hj_m2>a{
        color: black;
        text-decoration: none;
        
    }
    #mypage{
        float: right;
        margin-top: 30px;
        margin-right: -60px;
    }
    #mypage>li {
       font-size: 15px;
        font-weight: bold;
        text-align: center;
    }
    #log-in{
    	float: right;
    	margin-top: 30px;
        margin-right: 20px;
    }
    #log-in>li {
        font-size: 15px;
        font-weight: bold; 
        margin-top: 2px;  
    }
    #log-out{
       float: right;
       margin-top: 25px;
        margin-right: 0px;
    }
    #log-out>li {
        font-size: 15px;
        font-weight: bold;   
    }
    #log_id>li {
        float: right;
        margin:40px 0 0 0;
        font-size: 30px;
        font-weight: bold;
    }
        }
    #profile>li{
    	float: right;
        margin:20px -60px 0 0;
    }

   .tr_qna_main_undervar{
    width:100%;
    height:10px;
    background-color: #1a7ad9;
    margin-top:6%;
    }
    
    
    
    /*게시판 테이블*/
    
    .qna_img_background{
    position:relative;
    z-index:-1;
    width:70%;
    height:1500px;
    margin:20px 0 0 320px
    }
    .qna_listview_main{
    position:absolute;
    top:500px;
    left:490px;
    z-index:1;
    
    }
    .qna_viewlist_narvar{
     background-color: rgb(70, 70, 129);
     width:1000px;
     height:80px;
     margin-left:0%;
     margin-botom:40px;
     
    
    }
    
    .qna_viewlist_narvar_txt{
     color:#fff;
     font-size:30px;
     text-align:center;
     padding-top:10px;
     font-family: 'Kufam';
    }
    
    table.t_content {
		border-collapse: collapse;
		border-spacing: 1px;
		text-align: left;
		line-height: 1.5;
		margin : 20px 10px;
		width:1000px;
		/*border-top:2px solid black;*/
		/*height:1000px;*/
		
		
	}
	table.t_content th {
		padding: 10px;
		font-weight: bold;
		vertical-align: top;
		/*border-bottom: 3px solid #777777;*/
		/*font-size:25px;*/
		text-align:center;
		
		/*height:40px;*/
	}
	.qna_view_list_first_th{
	background-color: rgb(70, 70, 129);
	width:80px;
	height:30px;
	}
	.qna_view_list_second_th{
	background-color: #e0e4e7;
	
	
	}
	
	
	.qna_view_list_tit1{
	margin-top:20px;
	color:#fff;
	font-size:25px;
	font-family: 'Poor Story';
	}
	
	.qna_view_list_tit{
	margin-top:25px;
	font-size:28px;
	font-family: 'Poor Story';
	
	}
	
	.qna_viewlist_f_td{
	font-size:18px;
	}
	
	.qna_viewlist_qnalist{
	background-color: #e0e4e7;
	
	}
	.qna_qnalist_link{
	text-decoration:none;
	color:black;
	font-size:22px;
	font-family: 'Poor Story';
	
	
	}
	
	.qna_view_lastvar{
	background-color:  rgb(70, 70, 129);
	
	}
	.tr_button8{
	height: 40px;
     width: 80px;
     text-align:center;
     background-color: rgb(70, 70, 129);
     color:white;
     font-weight: bold;
     font-size: 18px;
     margin-left:92%;
     font-family: 'Poor Story';
	
	}
	table.t_content td {
		padding: 10px;
		vertical-align: top;
		border-bottom: 1px solid #ccc;
	}
	table.t_comment {
		border-collapse: collapse;
		border-spacing: 2px solid rgb(70, 70, 129);
		text-align: left;
		line-height: 1.5;
		margin :10px;
		margin-top:100px;
		height:200px;
		
	}
	table.t_comment th {
		padding: 10px;
		font-weight: bold;
		vertical-align: top;
		border-bottom: 3px solid #777777;
		font-size:30px;
		background-color:rgb(70, 70, 129);
		color:white;
	}
	.qna_listview_td{
	background-color:#e0e4e7;
	}
	
	.qna_listview_td1{
	background-color:rgb(70, 70, 129);
	
	}
	#sbmComment{
	height: 40px;
     width: 80px;
     text-align:center;
     background-color:rgb(70, 70, 129);
     color:#fff;
     font-weight: bold;
     font-size: 18px;
     margin-left:77%;
     margin-top:1%;
     font-family: 'Poor Story';
	
	}
	
	#tr_qna_comment{
	font-size:18px;
	border-radius:7px;
	padding-top:10px;
	margin-top:5px;
	}
	table.t_comment td {
		padding: 10px;
		vertical-align: top;
		 font-family: 'Poor Story';
		 /*font-size:20px;*/
		
	}
	
	/*댓글 창*/
	#t_comment1{
    width:1200px;
    border-bottom:2px solid black;
    height:50px;
    padding-20px;
	}
	
	.tr_qna_comment_id{
	font-size:28px;
	color:rgb(70, 70, 129);
	font-weight:bold;
	}
	
	.tr_qna_comment_date{
	padding-bottom:-10%;
	font-size:22px;
	float:right;
	
	
	}
	
	#a{
	padding-bottom:30px;
	font-size:22px;
	}
       /*마지막 바*/
   .lastnarvar{
     position:relative;
     width:100%;
     height:300px;
       top:400px;
     background-color:rgb(32, 51, 65);
   
   }
   
   .narvar_ul{
     display:flex;
     list-style:none;
     padding-left:20px;
     margin-left:50px;
     padding-top:20px;
     color:white;
     font-family: 'Do Hyeon', sans-serif;
   }
   .narvar_li{
     padding-left:10px;
     font-size:25px;
   }
   .narvar_li1{
     padding-left:10px;
     font-size:25px;
   }
   .narvar_li2{
     padding-left:10px;
     font-size:25px;
   }
   .narvar_li3{
     padding-left:10px;
     font-size:25px;
   }
   .narvar_li4{
     padding-left:10px;
     font-size:25px;
   }
   .narvar_li5{
     margin-left:940px
   }
   .narvar_li6{
     margin-left:15px;
   }
   
   .pl{
     position:absolute;
     top:20px;
     margin-left:1000px;
   }
   .pl_li{
     list-style:none;
     font-size:15px;
     color:rgba(255, 255, 255, 0.883);
     text-decoration: none;
     font-family: 'Do Hyeon', sans-serif;
     font-size:20px;     
   }
   .pl_litit{
     list-style:none;
     font-size:15px;
     color:rgba(255, 255, 255, 0.431);
     font-family: 'Do Hyeon', sans-serif;
     font-size:23px;
   }
   .tl{
     position:absolute;
     top:20px;
     margin-left:1150px;
        
   }
   .ml{
     display:flex;
     list-style:none;
     padding-left:20px;
     margin-left:50px;
     padding-top:10px;
     color:white;
   
   }
   .ml_li{
     padding-left:10px;
     font-size:20px;
     font-family: 'Do Hyeon', sans-serif;
   }
   .la{
     position: absolute;
     top:85%;
     margin-left:1380px;
     color:white;
     font-family: 'Do Hyeon', sans-serif;
     font-size:20px;
   
   }   
</style>
<body>
<div class="narvar"></div>
    <div align="center" >
        <ul id="hj_menu">
            <li class=hj_m1><a href="http://52.14.162.119:8080/planner/"><div class="mainlogo"><img src="https://cdn.pixabay.com/photo/2018/02/04/01/54/paper-planes-3128885_960_720.png" width="50px" height="50px" ></div>HUMAN<br>&nbsp;&nbsp;&nbsp;&nbsp;PLAN&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li class=hj_m2><a href="hj_plan"><h3>일정 만들기</h3></a></li>
            <li class=hj_m2><a href="tripInfo"><h3>여행정보</h3></a></li>
            <li class=hj_m2><a href="hj_yplan"><h3>인기 여행일정 및 후기</h3></a></li>
            <li class=hj_m2><a href="qnaList"><h3>게시판</h3></a></li>
            <c:if test="${empty id}">
            <div id=log-in>
            	<li class=hj_m2><a href="hj_log"><img src="/planner/resources/lock.png" width="28px" height="23px"><br>로그인</a></li>
   			</div>
            <div id=mypage>
                <li class=hj_m2><a href="hj_log"><img src="/planner/resources/my.PNG" width="30px" height="25px"><br>마이페이지</a></li>
            </div>
            </c:if>
            <c:if test="${not empty id}">
            <div id=log-out>
            	<li class=hj_m2><a href="logout"><img src="/planner/resources/nolock.png" width="35px" height="30px"><br>로그아웃</a>&nbsp;&nbsp;</li>
   			</div>
   			<div id=mypage>
                <li class=hj_m2><a href="hj_my"><img src="/planner/resources/my.PNG" width="30px" height="25px"><br>마이페이지</a></li>
            </div>
            <div id=log_id>	
            	<li class=hj_m2>${id}</li>
            </div>
            <div id="profile">
            	<li class=hj_m2><img src="${icon}" width="60px" height="60px"></li>
            </div>
            </c:if>
        </ul>
    </div>

   	
	 
    <div class="tr_qna_main_undervar"></div>

   	 <img src="https://cdn.pixabay.com/photo/2018/05/14/15/54/graphic-3400557_960_720.png"  class="qna_img_background"/>
   	 
   	 <div class="qna_listview_main">
   	<div class="qna_viewlist_narvar"><h3 class="qna_viewlist_narvar_txt">게시판 글보기</h3></div>
	<table class="t_content" style="margin-left: auto; margin-right: auto;" border=1>
	  	<!-- <form action="modify" method="post"> -->
	  	<input type="hidden" name=q_id value="${dto.q_id}">
		<tr height=50px>
			
			<th  class="qna_view_list_first_th"><p class="qna_view_list_tit1">제목</p></th><th width=500px align=center class="qna_view_list_second_th"><p class="qna_view_list_tit">${dto.q_title}</p></th>
			<th  class="qna_view_list_first_th"><p class="qna_view_list_tit1">작성자</p></th><th width=80px class="qna_view_list_second_th"><p class="qna_view_list_tit">${dto.t_id}</p></th>
			<th  class="qna_view_list_first_th"><p class="qna_view_list_tit1">조회수</p></th><th width=80px class="qna_view_list_second_th"><p class="qna_view_list_tit">${dto.q_hit}</p></th>
		</tr>
		<tr height=600px>
			<td colspan=6 class="qna_viewlist_f_td" >${dto.q_content}</td>
		</tr>
		
		<tr height=50px>
			<td colspan=6 align=right class="qna_viewlist_qnalist"><a href="qnaList"class="qna_qnalist_link"><i class="fas fa-undo fa-lg"></i>&nbsp;목록보기</a>&nbsp;&nbsp;
			
		</tr>
		<tr height=50px>
			<td colspan=6 class="qna_view_lastvar"></td>
		</tr>
		<!-- </form> -->
	</table>
	
	<input type=submit value="수정" class="tr_button8"></td>
	
	</div>
	<table class="t_comment" style="margin-left: auto; margin-right: auto;">
		<form action="comment_write" method="get">
		<input type="hidden" name=id value="${id}">
		<input type="hidden" name=q_id value="${dto.q_id}">
		
		<tr height=50px>	
			<th width=760px>Comments_</th>
		</tr>
		    <c:if test="${empty id}">
				<tr height=100px>
					<td><textarea cols=5 style="width:100%; height:100px; resize:none;" name="comment" placeholder="로그인 후 댓글입력"  readonly></textarea></td>
				</tr>
				<tr height=50px>
					<td align=right><input type=button value=등록 id=sbmComment_login></td>
				</tr>
            </c:if>
            <c:if test="${not empty id}">
				<tr height=100px>
					<td><textarea cols=5 style="width:100%; height:100px; resize:none;" name="comment" placeholder="댓글을 입력하세요" ></textarea></td>
				</tr>
				<tr height=50px>
					<td align=right><input type=submit value=등록 id=sbmComment></td>
				</tr>
            </c:if>
		</form>
	</table>
	<br>
	
	<table class="t_comment" style="margin-left: auto; margin-right: auto;" id="t_comment1"  >
		<c:forEach items="${comment}" var="comment">
		<tr height=50px>
			<td colspan=2 class="tr_qna_comment_id">${comment.t_id}</td>
			<!-- td width=20%  class="tr_qna_comment_date"><fmt:formatDate value="${comment.c_date}" pattern="MM-dd HH:mm"/></td-->
		</tr>
		<tr height=50px>
		<td width=600px id=a >${comment.c_comment}</td>
		<td width=20%  class="tr_qna_comment_date"><fmt:formatDate value="${comment.c_date}" pattern="MM-dd HH:mm"/></td>
		</tr>
		</c:forEach>
	</table>
	
	
	<br><br>
    
           <!-- 하단바 -->
        <div class="lastnarvar">
    		<ul class="narvar_ul">
		      <li class="narvar_li">회사소개</li>
		      <li class="narvar_li">|</li>
		      <li class="narvar_li1">이용약관</li>
		      <li class="narvar_li1">|</li>
		      <li class="narvar_li2">개인정보처리방침</li>
		      <li class="narvar_li2">|</li>
		      <li class="narvar_li3">여행약관</li>
		      <li class="narvar_li3">|</li>
		      <li class="narvar_li4">오시는길</li>
		      <li class="narvar_li4">|</li>

		      <div class="narvar_li5">
		        <li><i class="fab fa-instagram fa-3x"></i></li>
		      </div>
		      <div class="narvar_li6">
		        <li><i class="fab fa-facebook-square fa-3x"></i></li>
		      </div>
		      <div class="narvar_li6">
		        <li><i class="fab fa-youtube fa-3x"></i></li>
		      </div>
		      <div class="narvar_li6">
		        <li><i class="fab fa-google-plus-square fa-3x"></i></li>
		      </div>

    	   </ul>

     	<div class="pl">
      		<ul class="pl_ul">
		        <li class="pl_litit"><h3>여행이야기</h3></li>
		        <li class="pl_li"><a href="hj_plan" class="pl_li">여행일정</a></li>
		        <li class="pl_li"><a href="tripInfo" class="pl_li">여행정보</a></li>
		        <li class="pl_li"><a href="hj_yplan" class="pl_li">여행추천및후기</a></li>
		        <li class="pl_li">게시판</li>
	        </ul>
	    </div>

    <div class="tl">
      <ul class="pl_ul">
        <li class="pl_litit"><h3>고객센터</h3></li>
        <li class="pl_li">FAQ</li>
        <li class="pl_li">문의하기</li>
        <li class="pl_li">이용약관</li>
        
        </ul>
    </div>

    <div>
      	<ul class="ml">
	        <li class="ml_li">HUMAN-PLAN</li>
	        <li class="ml_li">|</li>
	        <li class="ml_li">주소 : 충청남도 천안시 서북구 성정공원5로 35 6층</li>
	        <li class="ml_li">|</li>
	        <li class="ml_li">연락처 : 041-123-2222</li>
	        <li class="ml_li">|</li>
       </ul>
        <ul class="ml">
        
          <li class="ml_li">이메일 : human-plan@gmail.com</li>
          <li class="ml_li">|</li>
        </ul>
        
       <div class="la">
        COPYRIGHTⓒ HUMAN-PLAN. ALL RIGHTS RESERVED.
       </div>
    </div>
   </div>   
</body>


<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script language='javascript'>
	$(document).ready(function () {
	})
	.on('click','#comment',function(){
	})
	.on('click','#sbmComment_login',function(){
		location.href='hj_log';
	})

</script>
</html>