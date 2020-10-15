<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지4</title>
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
        border:1px solid  rgb(110, 110, 110);
        height: 280px;
        width: 800px;
    }
    #plans_table *{
        font-weight:bold;
    }
    #plans_table >tr {
    	border:1;
    }
    .plans_td1 {
        border-bottom: 1px solid  rgb(110, 110, 110);
        height: 200px;
        width: 800px;
    }
    .plans_td2 {
        height: 80px;
        width: 800px;
        color:rgb(32, 51, 65);
        margin-left: 10px;
    }
    .plans_td2>div {
        margin-left: 10px;
        font-size:17px ;
    }

    #pho{
    	height: 100%;
    	width: 100%;
    	padding:0;
    }
    #pho>img{
    	height: 200px;
        width: 800px;
    }
    #go_plan{
    	float: right;
		height: 80px;
        width: 80px;
    	margin-right: 10px;
    	text-align:center;
        background-color: rgb(32, 51, 65);
        color:white;
        margin-top: 5px;
        font-size:13px ;
    }
    #delete_plan{
    	float: right;
		height: 80px;
        width: 80px;
    	margin-right: 10px;
    	text-align:center;
        background-color: rgb(32, 51, 65);
        color:white;
        margin-top: 5px;
        font-size:13px ;
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
    #hj_m14>a{
        color: black;
       background-color:white;
       height: 100%;
       padding:10px 5px 17px 5px;
    }
    
    /*테이블*/
   .tr_qna_table_main{
   margin-top:3%;
    font-family:'Poor Story';
    font-size:25px;
    /*font-weight:bold;*/
   
   
	}
  
   
    table.t_list {
		border-collapse: separate;
		border-spacing: 1px;
		text-align: left;
		line-height: 1.5;
		margin : 20px 10px;
		border-top: 5px solid rgb(70, 70, 129);
		
	}
	table.t_list th {
		padding: 10px;
		font-weight: bold;
		vertical-align: top;
		/*border-bottom: 3px solid #777777;*/
		background-color:#e0e4e7;
	}
	.table_td {
		padding: 10px;
		vertical-align: top;
		border-bottom: 1px solid #ccc;
	}
	.tr_q{
	text-decoration:none;
	color:black;
	}
	
	.tr_button6{
	 height: 40px;
     width: 80px;
     text-align:center;
     background-color: rgb(70, 70, 129);
     color:white;
     font-weight: bold;
     font-size: 20px;
     margin-left:84.5%;
     margin-top:2%;
     font-family:'Poor Story';
	}
	
	.tr_list_txt{
	font-size:35px;
	font-weight:bold;
	margin-left:11.4%;
	position:relative;
	margin-top:-5%;
	font-family:'Poor Story';
	  }
	
	.tr_number_page{
	margin-top:1.8%;
	font-size:20px;
	font-weight:bold;
	
	}
	
	.tr_list_cnt{
	font-size:22px;
	margin-left:75.5%;
	margin-top:;
	/*font-family:'Poor Story';*/
	
	}
	.tr_list_cnt1{
	color:rgb(218, 150, 26);
	
	}
	

	
	
	/*select*/
	
 
    select { -webkit-appearance: none; /* 네이티브 외형 감추기 */ 
           -moz-appearance: none; 
           appearance: none; 
           background: url(이미지 경로) no-repeat 95% 50%; /* 화살표 모양의 이미지 */ } 
          
     /* IE 10, 11의 네이티브 화살표 숨기기 */        
   select::-ms-expand { display: none; 
   }
   
   select { width: 70px; /* 원하는 너비설정 */ 
   padding: .5em .4em; /* 여백으로 높이 설정 */ 
   font-family: inherit; /* 폰트 상속 */ 
   background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; /* 네이티브 화살표 대체 */
   font-size:18px; 
   font-weight:bold;
   border: 1px solid #999; 
   border-radius: 0px; /* iOS 둥근모서리 제거 */ 
   -webkit-appearance: none; /* 네이티브 외형 감추기 */ 
   -moz-appearance: none; 
   appearance: none; 
   }
   
  #cntPerPage{
   margin-bottom:50px;
   }
    
       /*마지막 바*/
   .lastnarvar{
     position:relative;
     width:100%;
     height:300px;
       top:120%;
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
    <br>
    <div id="outter" style="position:relative; top:50px; left:85%">
		<select id="cntPerPage" name="sel" onchange="selChange()">
			<option value="5" <c:if test="${paging.cntPerPage == 5}">selected</c:if>>5</option>
			<option value="10" <c:if test="${paging.cntPerPage == 10}">selected</c:if>>10</option>
			<option value="15" <c:if test="${paging.cntPerPage == 15}">selected</c:if>>15</option>
			<option value="20" <c:if test="${paging.cntPerPage == 20}">selected</c:if>>20</option>
		</select>
	</div>
	<br>
    <div class="tr_list_txt"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAXVBMVEUBAQH///8AAAA+Pj6Ojo7IyMhhYWH6+vqKioqurq5LS0uGhoadnZ2CgoKxsbFycnK5ublWVlYiIiLx8fHT09MuLi7h4eGlpaUZGRlmZmZQUFA3Nzfq6uoMDAx4eHhubglYAAADcElEQVR4nO3d6XabMBSFUSTbcdyQeIydpMP7P2btTklshK4GJJ3b8/0Gqr0EC4yySme019UewORRiB+F+P0PwmX/YiF7XsmEy1ntkcZ3JxL2tkPN2o1E+Iwr7OxWIgQGdnYmESJHIYXtRyGF7Uchhe1HIYXtRyGF7Uchhe1HIYXtRyGF7Uchhe1HIYXtdyVcfv1y1d1GmXBgIfxVmfB2C7uqMK58+YXnTcoPK2MSIfIqvkgI/XcKMiF2FOJHIX4U4kchfhTiRyF+FOJHIX4U4kchfhTiRyF+FOJHIX4U4kchfhTiRyF+FOJHIX4U4kchfhTiRyF+FOJHIX4U4kchfhTiRyF+FOJHIX4U4kchfhTiRyF+FOJHIX4U4icTIruFcwhMlAnfkIVriXCB+39FWXuUCE3v/75Z8L9cqKuPkrmE5tjPx9uFEa1dew6Yp9PeCIXeZkFCa+eCY07RvoywHtAciggrAs2mhLAm0Dg+5SjYUy6sCjSOTzkK9hQL6wK/OW5rgl2lwrpAM3cMU7CrUFgZuP8+tbAy0KxdoxTsKxLWBvbOh0vBzhJhu8BMwsrA49vIzwPB/n5hVeD+sB79/SM4hFfoAB4W03d63O48v+8yCB3Ap2K/E8eHly50AFetvDxIFrYOTBY2D0wVuq/BcgRPacL2ZzBRiABMEgKcol2SEGIGU4QgwHghCjBaiHENXooUwsxgrBAIGCdEAkYJca7ByxJ3hBBpBm2MEAl4+d5TsBDpFD0P9ilY6J7B6d9HDAB8/TChQtdLp+1dhraBRPvyOn7A9cKECid+bfgQRpR9/1Cwzbtw8veiYcT8wgIvfu9DiNmFRd5shxBzCwu9un+UEzMLi61NyGcxr7Dg4ouYmFVYdHVJSswpLLx8JrwWMwqLrw/KZjGnsPgCqIiYUVhhhVfydJNNuLtPHW5MAmI24Sl1sHH5T9Rswlp5ifBC700DX+ibRQVCD1GDcJyoQjh609AhHJtFJcIRohah+0RVI3TOoh6hi6hIeCZqFw4/wKkSDp6ouoRDRGXCgZuGNuEtUZ3w5kTVJ7wmKhRe3TQ0Cj/PokrhJ6JO4UeiUuGHa1Gr8H0W1Qr/EfUK/z7dKBb+IWoW/j5RVQt/EXULLzcN5cLLLCoXnonaheZhJ9gIWmh6wTbYQkkU4kchfhTi9xNsdWYyDbKfkgAAAABJRU5ErkJggg==" width="50px" height="50px"/>&nbsp;게시판 정보</div>
	<div class="tr_list_cnt">총 &nbsp;<span class="tr_list_cnt1"></span>건의 게시물</div>
	<table class="t_list" style="margin-left: auto; margin-right: auto; width:1500px;">
		<thead>
		<tr class="tr_qna_var">
			<th width=50px>No.</th>
			<th width=100px>ID</th>
			<th width=500px>제목</th>
			<th width=100px>날짜</th>
			<th width=50px>조회수</th>
		</tr>
		</thead>
		<c:forEach items="${list}" var="dto">
		<tr class="table_tr">
			<td class="table_td">${dto.q_id}</td>
			<td class="table_td">${dto.t_id}</td>
			<td class="table_td"> 
				<a href="qnaContent_view?q_id=${dto.q_id}" class="tr_q">${dto.q_title}</a>
			<td class="table_td">${dto.q_date}</td>
			<td class="table_td">${dto.q_hit}</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan=5 align=right>
			<a href="qnaContent_write"><button class="tr_button6">등록</button></a>
		</tr>
	</table>
	
	<div style="display: block; text-align: center;" class="tr_number_page">		
		<c:if test="${paging.startPage != 1}">
			<a href="/planner/qnaList?nowPage=${paging.startPage-1}&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage}">
					<b>${p}</b>
				</c:when>
				<c:when test="${p != paging.nowPage}">
					<a href="/planner/qnaList?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="/planner/qnaList?nowPage=${paging.endPage+1}&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>
	<br><br><br>
    
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
						$("#plans").append('<table id=plans_table align=center><tr><td class=plans_td1><div id=pho><img src="'+city_img+'"></div></tr></td><tr><td class=plans_td2><div><button id="delete_plan" plan_id="'+d+'">일정삭제</button></div><div><button id="go_plan" plan_id="'+d+'">일정수정</button></div><div>'+a+'<br>'+b+'<br>'+c+'<br>'+e+'</div></td></tr></table><br><br>');
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
                    plan_register(obj['t_id'],obj['my_name'],obj['my_start'],obj['my_id'],obj['my_city'])
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