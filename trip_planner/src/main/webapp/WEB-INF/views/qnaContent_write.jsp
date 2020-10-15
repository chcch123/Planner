<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A Content Write</title>
</head>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Kufam:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/765d58648e.js" crossorigin="anonymous"></script>
<script src="//cdn.ckeditor.com/4.15.0/full/ckeditor.js"></script>
<style>
  body{
margin:0px;
}
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
    
    
    /*테이블*/
    table{
    background-color:#e0e4e7;
    font-family:'Poor Story';
    }
    
    
    table.write {
		border-collapse: collapse;
		border:1.5px solid;
		border-spacing: 3px;
		text-align: left;
		line-height: 1.5;
		margin : 20px 10px;
		width:1300px;
		height:900px;
	}
	table.write th {
		padding: 10px;
		font-weight: bold;
		vertical-align: top;
		border-bottom: 3px solid #777777;
		
		/*border:2px solid;*/
	}
	table.write td {
		padding: 10px;
		vertical-align: top;
		border-bottom: 1px solid #ccc;
		
	}
	.tr_qna_td{
	text-align:center;
	background-color:rgb(70, 70, 129);
	color:#fff;
	font-size:28px;
	padding-top:5%;
	font-family:'Poor Story';
	
	}
	/*input type text 제목*/
	.tr_qna_title{
	width:95%;
	height:45px;
    margin-left:2%;
    margin-top:8px;
    font-size:23px;
    border-radius:5px;
	font-family:'Poor Story';
	
	}
	/*메인 아이디*/
	.tr_main_id{
	font-size:30px;
	
	}
	/*게시판 제목*/
	.tr_qnawrite_txt{
	background-color:rgb(70, 70, 129);
	width:1300px;
	margin-top:2%;
	margin-left:16%;
	text-align:center;
	padding-top:10px;
	padding-bottom:10px;
	height:50px;
	color:#fff;
	font-size:35px;
	font-family:'Poor Story';
	}
	
	/*목록보기*/
	
	.tr_qnaList_link{
	text-decoration:none;
	color:black;
	font-weight:bold;
	font-size:22px;
	font-family:'Poor Story';
	}
	
	.tr_button7{
	height: 40px;
     width: 80px;
     text-align:center;
     background-color: rgb(70, 70, 129);
     color:white;
     font-weight: bold;
     font-size: 22px;
     margin-left:80%;
     margin-top:2%;
     font-family:'Poor Story';
     margin-bottom:3%;
     
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
        </ul>
    </div>
    

 <div class="tr_qna_main_undervar"></div>
   
<div class="tr_qnawrite_txt">게시판 글작성</div>
	<table class=write style="margin-left: auto; margin-right: auto;" border=1 >
		<form action="write" method="post">
		<input type="hidden" name=id value="${id}">
		
		<tr>
			<td width=100px class="tr_qna_td"><p style="padding-top:2px">ID</p></td><td width=500px  class="tr_main_id">${id}</td>
		</tr>
	    <tr> 
			<td width=100px class="tr_qna_td"><p style="padding-top:2px">제목</p></td><td><input type=text name=title class="tr_qna_title" placeholder="제목" ></td>
		</tr>
		<tr>
			<td height=500px class="tr_qna_td" ><p style="padding-top:200px;">내용</p></td>
			<td>
				<textarea  name="content" id="tr_html_value" ></textarea>
			</td>
		</tr>
		<tr>
			<td colspan=2 align=right>
				<a href="qnaList" class="tr_qnaList_link"><i class="fas fa-undo fa-lg"></i>&nbsp;&nbsp;목록보기</a>&nbsp;&nbsp;
				<!--input type=submit value=입력-->
			</tr>
	</table>
	<div ><input type=submit value=완료 class="tr_button7"></div>
			</form>	
	    
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
<script>
    CKEDITOR.replace('content', {
      height:550,
      extraPlugins: 'editorplaceholder',
      editorplaceholder: '내용을 입력하세요'
         /*height: 500;*/
      
    });
  </script>
</html>