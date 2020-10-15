<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지1</title>
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
    table, tr, td,div,img{
    	border-spacing: 0;
    }
     #plans{
       margin-left: auto;
    }
    #plans_table{
        border:1px solid rgb(160, 158, 158);
        height: 280px;
        width: 400px;
        margin-left:180px;
        margin-bottom:10%;
        float: left;
    }
    #plans_table *{
        font-weight:bold;
    }
    #plans_table >tr {
    	border:1;
    }
    .plans_td1 {
        height: 200px;
        width: 400px;
    }
    .plans_td2 {
        height: 80px;
        width: 400px;
        color:rgb(32, 51, 65);
        font-family: 'Poor Story';        
        margin-left: 10px;
    }
    .plans_td2>div {
        margin-left: 10px;
        font-size:20px ;
    }

    #pho{
    	height: 100%;
    	width: 100%;
    	padding:0;
    }
    #pho>img{
    	height: 200px;
        width: 400px;
    }
    #button_total{
    	float:right;
    	margin-right:10px;
    }
    #go_plan{
		height: 40px;
        width: 80px;
    	text-align:center;
        background-color: rgb(32, 51, 65);
        color:white;
        margin-bottom:10px;
        font-size:18px ;
        font-family: 'Poor Story';   
         font-weight: bold;
    }
    #delete_plan{
		height: 40px;
        width: 80px;
    	text-align:center;
        background-color: rgb(32, 51, 65);
        color:white;
        font-size:18px ;
        font-family: 'Poor Story'; 
         font-weight: bold;  
    }

	#plans_listmain{
		height: 300px;
        width: 100%;
	}
    #plans_listmain >img{
   		height: 100%;
        width: 100%;
        position: relative; 
        z-index: 1;
    }
    #myname{
       height: 80px;
        width: 250px;
       position: absolute;
       z-index: 10;
       font-weight: bold;
       font-size: 60px ;
        margin:-160px 0 0 800px;
        color:white;
        background-color: rgba( 255, 255, 255, 0.3 );
        font-family: 'Poor Story';
    }
    #hj_menu2{
       	height: 50px;
        width: 100%;
        margin-top:27px;
        background-color: rgb(32, 51, 65);
    }
    .hj_m21{
        font-size: 21px;
        list-style: none;
        float: left;
        text-decoration: none;
        padding-left:70px;
        font-weight: bold;
        margin-top:10px;
        font-family: 'Poor Story';
    }
    .hj_m21>a{
        color: white;
        text-decoration: none;
        
    }
    #hj_m11>a{
        color: black;
       background-color:white;
       height: 100%;
       padding:10px 5px 17px 5px;
    }
       /*마지막 바*/
   .lastnarvar{
     position:relative;
     width:100%;
     height:300px;
       top:800px;
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
            <input type="hidden" value="${t_id}" id="t_id">
            <input type="hidden" value="${id}" id="m_id">
            <form action="ij_saved_plan" id="go_form">
            <input type="hidden" value="" id="go_saved_plan" name="plan_id">
            </form>
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
    <br><br><br>
	<div id=plans_listmain></div>
	<div id=myname>마이페이지</div>
	<div id=hj_menu2 >
        <ul>
            <li class=hj_m21  id=hj_m11 ><a href="hj_my">여행일정</a></li>
            <li class=hj_m21 id=hj_m12 ><a href="ij_show_my_plan2">클립보드</a></li>
            <li class=hj_m21 id=hj_m13 ><a href="ij_show_my_plan3">리뷰</a></li>
            <li class=hj_m21 id=hj_m14 ><a href="ij_show_my_plan4">Q&A</a></li>
            <li class=hj_m21 id=hj_m15 ><a href="ij_show_my_plan5">회원정보수정</a></li>
        </ul>
    </div>
    <br><br><br><br>
    
    <div id="plans">
    </div>   
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
<script language="javascript">

    function plan_register(a,b,c,d,e) {
	    $.ajax({
		       	method:'GET',
		        url:'ij_show_my_city_photo',
		        datatype:'text',
		        data:{my_city:e},
		        success:function(str){
		        	city_img = str;
		        }
		        
				}).done(function(){
						$("#plans").append('<table id=plans_table align=center><tr><td class=plans_td1><div id=pho><img src="'+city_img+'"></div></tr></td><tr><td class=plans_td2><div id=button_total><button id="go_plan" plan_id="'+d+'">일정수정</button><br><button id="delete_plan" plan_id="'+d+'">일정삭제</button></div><div>'+a+'<br>'+b+'<br>'+c+'<br>'+e+'</div></td></tr></table>');
			    	})
		}
    
    function show_plan_list() {
        $.ajax({
	           	method:'GET',
	            url:'ij_show_my_plan',
	            datatype:'text',
	            data:{t_id:$("#t_id").val()},
	            success:function(str){
	               	var json_plan=JSON.parse(str)
	                $("#plans").empty();
                $.each(json_plan,function(ndx,obj){
                    plan_register($('#m_id').val(),obj['my_name'],obj['my_start'],obj['my_id'],obj['my_city'])
                });
            }
        })
    }
   	function show_photo(){
   		$.ajax({
   			method:'GET',
            url:'ij_show_photo',
            datatype:'text',
            success:function(str){
            	console.log(str)
                $("#plans_listmain").html('<img src="'+str+'">')
        	}
   		})
   	}

   $(document).ready(function () {
        show_plan_list();
        show_photo();
    })
    .on('click', '#go_plan', function () {  
        $('#go_saved_plan').val($(this).attr('plan_id'));
        $('#go_form').submit();
    })
    .on('click', '#delete_plan', function () {  
        $.ajax({
           method:'GET',
            url:'ij_delete_my_plan',
            datatype:'text',
            data:{plan_id:$(this).attr('plan_id')}         
        })
        setTimeout(function(){
            show_plan_list()
        },300)
    })
</script>  
</html>