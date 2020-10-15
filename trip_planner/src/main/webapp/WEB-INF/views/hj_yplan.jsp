<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

<title>인기 여행일정 및 후기</title>
</head>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Kufam:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/765d58648e.js" crossorigin="anonymous"></script>
<style>
      html, body {
          margin-left:0;
          margin-right:0;
          height: 100%;
          width:100%;
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
    #profile>li{
    	float: right;
        margin:20px -60px 0 0;
    }
    .tr_back_ground{
    /*background-color:rgba(235, 230, 230, 0.938);*/
    
    }
    .tr_yplan_tb{
    margin-left:8%;
    }
    .yplan_table{
        border:1px solid rgb(160, 158, 158);
        height: 280px;
        width: 400px;
        float:left;
        margin-left:180px;
        margin-bottom:10%;

    }
    .yplan_table *{
        font-weight:bold;
    }
    .tr_plan_img_m{
    position:relative;
    }
    .tr_plan_img{
    width:100px;
    height:100px;
    position:absolute;
    margin-top:-2%;
    left:57.4%;
    }
    
    /*테이블 제목*/
    .tr_yplan_tb_txt{
    font-size:35px;
    font-weight:bold;
    margin-left:45%;
    margin-bottom:2%;
           font-family: 'Poor Story';
    margin-top:-50px;       
    }
    .tr_yplan_tb_stxt{
    font-size:25px;
    margin-left:39%;
    margin-bottom:3%;
           font-family: 'Poor Story';
    }
    .yplan_td1 {
        height: 200px;
        width: 400px;
    }
    .yplan_td2 {
        height: 80px;
        width: 400px;
        color:rgb(32, 51, 65);
        margin-left: 10px;
        font-family: 'Poor Story'; 
    }
    .yplan_td2>div {
        margin-left: 10px;
        font-size:20px ;
        font-family: 'Poor Story';
    }
    #planlist{
        float:right;
        height: 40px;
        width: 80px;
       text-align:center;
        background-color: rgb(32, 51, 65);
        color:white;
        font-size:18px ;
        margin-right: 10px;
        font-family: 'Poor Story';
    }
    #planlist_c{
        float:right;
       height: 40px;
        width: 80px;
       text-align:center;
        background-color: rgb(32, 51, 65);
        color:white;
        font-size:18px ;
        margin-right: 10px;
        font-family: 'Poor Story';
    }
    #pho>img{
       height: 200px;
        width: 400px;
    }
    table, tr, td,div,img{
       border-spacing: 0;
    }
    .pic_first_var{
    width:100%;
    height:10px;
    background-color:#1a7ad9;
    margin-top:6%;
    margin-bottom:-30px;
    }
    
    .pic_last_var{
     width:100%;
    height:10px;
    background-color:#1a7ad9;
    
    }
    #pho{
       height: 100%;
       width: 100%;
       padding:0;
    }
    #pic_box{
         height: 520px;
       width: 100%;
       border:1px solid transparent;
        background-color:#ccdae7;
        margin-top:28px;
        vertical-align:middle;
        text-align:center;
    }
    #pic_txt{
      height: 50px;
      width: 300px;
      font-size:40px ;
      font-weight: bold;
      margin:auto;
      color:white;
      font-family: 'Poor Story';
       background-color:#1a7ad9;
       padding:5px;
      padding-left:30px;
       padding-right:30px;
       margin-top:30px;
      margin-left:41.5%;
      margin-bottom:30px;
    }
    #img1{
         width:400px;
         height:350px;
      display:inline-block;
      position: relative; 
            padding-left:3%;
    }
    #img2{
          width:400px;
         height:350px;
      display:inline-block;
      position: relative; 
      padding-left:3%;
    }
    #img3{
          width:400px;
         height:350px;
      display:inline-block;
      position: relative; 
            padding-left:3%;
    }
   .txt1,.txt2,.txt3{
      top:40%;
      left:44%;
      font-family: 'Jua', sans-serif;
      font-size:30px;
      position: absolute; 
      color: black;
   }
   .txt1 >a{
   		color: black;
        text-decoration: none;
   }
   .txt2 >a{
   		color: black;
        text-decoration: none;
   }
   .txt3 >a {
   		color: black;
        text-decoration: none;
   }
 /*select박스*/
   
    #cntPerPage{
    position:absolute;
    top:20%;
    left:7%;
    
    }
    
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
   appearance: none; }




    
    /*페이징*/
    .tr_number{
    clear:both;
    font-size:22px;
   
    
    }
    .tr_number>a{text-decoration:none;
    color:black;
    
     }
    
    /*로딩 */
 /*   #loading {
 width: 100%;   
 height: 100%;   
 top: 0px;
 left: 0px;
 position: fixed;   
 display: block;   
 opacity: 0.7;   
 background-color: #fff;   
 z-index: 99;   
 text-align: center; }  
  
#loading-image {   
 position: absolute;   
 top: 50%;   
 left: 50%;  
 z-index: 100; } */

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
<!--     <br><br><br> -->
    <div class="pic_first_var"></div>
    <div id=pic_box>
    <div id=pic_txt>여행자의 일정보기</div>
    <div id=img1><img src="/planner/resources/map.PNG" width="400px" height="350px"><h2 class=txt1><a href="hj_my">내 일정</a></h2></div>
    <div id=img2><img src="/planner/resources/f4.jpg" width="400px" height="350px"><h2 class=txt2><a href="hj_yplan">인기 일정</a></h2></div>
   <div id=img3><img src="/planner/resources/bag3.jpg" width="400px" height="350px"><h2 class=txt3><a href="ij_show_my_plan2">클립 보드</a></h2></div>
    </div>
       <div class="pic_last_var"></div>
    <br><br>

<div id="outter" style="position:relative; top:50px; left:85%">
      <select id="cntPerPage" name="sel" onchange="selChange()">
         <option value="5" <c:if test="${ypaging.cntPerPage == 5}">selected</c:if>>5</option>
         <option value="10" <c:if test="${ypaging.cntPerPage == 10}">selected</c:if>>10</option>
         <option value="15" <c:if test="${ypaging.cntPerPage == 15}">selected</c:if>>15</option>
         <option value="20" <c:if test="${ypaging.cntPerPage == 20}">selected</c:if>>20</option>
      </select>
</div>
  <br>
   <br>
   <br>
   <br>
   
    <form action='hj_yplan_submit' method='GET'  id=frm> 
    <input type=hidden id=my_city name="my_city" value=""><input type=hidden id=my_id name="my_id" value="">
    </form>
<div class="tr_plan_img_m"><img src="https://i.pinimg.com/originals/30/cc/b7/30ccb745e6bc9fee7a778af55b405af1.png" class="tr_plan_img"></div>
    <div class="tr_yplan_tb_txt">인기여행일정보기</div>
    <div class="tr_yplan_tb_stxt">일정을 참고해 나만의 특별한 여행계획을 만들어 보세요!</div>
    
    <c:forEach items="${hj_yplan}" var="dto">
    <table class="yplan_table" align=center>
        <tr>
            <td class="yplan_td1">
               <div id=pho><img src="${dto['city']}"></div>
            </td>
        </tr>
        <tr>
            <td class="yplan_td2">
                  <div><input type=button id=planlist value='일정보기' my_id="${dto['my_id']}" my_city="${dto['my_city']}" >
                  
                     ${dto['my_start']}<br>
                     ${dto['my_name']}<br>
                  <div><input type=button id=planlist_c value='클립보드' t_id_a="${dto['t_id']}" my_id_a="${dto['my_id']}">
                     ${dto['my_city']}<br>
                     ${dto['my_place']}<br>
                  </div></div>
                  
            </td>
        </tr>
    </table>

     </c:forEach>
     
     <div style="display: block; text-align: center;"class="tr_number">      
      <c:if test="${ypaging.startPage != 1}">
         <a href="/planner/hj_yplan?nowPage=${ypaging.startPage-1}&cntPerPage=${ypaging.cntPerPage}">&lt;</a>
      </c:if>
      <c:forEach begin="${ypaging.startPage}" end="${ypaging.endPage}" var="p">
         <c:choose>
            <c:when test="${p == ypaging.nowPage}">
               <b>${p}</b>
            </c:when>
            <c:when test="${p != ypaging.nowPage}">
               <a href="/planner/hj_yplan?nowPage=${p}&cntPerPage=${ypaging.cntPerPage}">${p}</a>
            </c:when>
         </c:choose>
      </c:forEach>
      <c:if test="${ypaging.endPage != ypaging.lastPage}">
         <a href="/planner/hj_yplan?nowPage=${ypaging.endPage+1}&cntPerPage=${ypaging.cntPerPage}">&gt;</a>
      </c:if>
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
    $(document).ready(function(){})
   .on('click','#planlist',function(){
      $("#my_id").val($(this).attr('my_id'));
      $("#my_city").val($(this).attr('my_city'));
      $("#frm").submit();
   })
   .on('click','#planlist_c',function(){
       $.ajax({
             method:'GET',
             url:'hj_yplan_clip',
             datatype:'text',
             data:{t_id:$('#t_id').val(),my_id:$(this).attr('my_id_a')}
         })
      alert("클립보드 완료")
   })

</script>  
<script language='javascript'>
   function selChange(){
      var sel=document.getElementById('cntPerPage').value;
      location.href="hj_yplan?nowPage=${ypaging.nowPage}&cntPerPage="+sel;
   }
   
</script>
</html>