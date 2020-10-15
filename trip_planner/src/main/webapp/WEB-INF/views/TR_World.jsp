<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
 <link rel="stylesheet" type="text/css" href="/planner/resources/tr_tripinfo_city.css">
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Kufam:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
 <script src="https://kit.fontawesome.com/765d58648e.js" crossorigin="anonymous"></script>
</head>

<body>
	<div class="narvar"></div>
	<div align="center">
		<ul id="hj_menu">

			<li class=hj_m1><a href="http://52.14.162.119:8080/planner/"><div class="mainlogo">
						<img src="https://cdn.pixabay.com/photo/2018/02/04/01/54/paper-planes-3128885_960_720.png"
							width="50px" height="50px">
					</div>HUMAN<br>&nbsp;&nbsp;&nbsp;&nbsp;PLAN&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			<li class=hj_m2><a href="hj_plan"><h3 class="hj_menu">일정
						만들기</h3></a></li>
			<li class=hj_m2><a href="tripInfo " class="hj_menu1"><h3>여행정보</h3>&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			<li class=hj_m2><a href="hj_yplan" class="hj_menu2"><h3>인기여행일정 및 후기</h3>&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
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
                    <input type="hidden" id="lat" value="${lat}">
                    <input type="hidden" id="city_money"value="${money}">
                    <input type="hidden" id="change"  value="${change}">
                    <input type="hidden" id="kor" value="${kor}">
                    <input type="hidden" id="link" value="${link}">
		</ul>
	</div>

	<!--   <tr>
         <th>이름</th><th>정보</th><th>이미지</th><th>날짜</th>
      </tr>-->
	<c:forEach items="${list}" var="dto">
		<div class="tr_narvar">
			
			<h3 class="tr_narvartit">${dto.e_name}</h3>
		</div>

		<div class="tr_citymain">
			<div style="float: left">
				<img src="${dto.e_img}"  class="tr_cityimg">
			</div>

			<table style="float: right" border=1 class="tr_citytable">
				<tr>
				  <td>
					<h3 class="tr_info_text_tit">${dto.e_name}</h3><br><p class="tr_info_text">${dto.e_information}</p>
				
					<br>
					
					<pre><p class="tr_info_text1">${dto.e_info}</p></pre><br><br><a href="${dto.e_infolink}" class="tr_info_link">더보기</a></td>
				</tr>

			</table>
			
		</div>
		
		<div class="tr_narvar1"></div>

       <br>
       <br>
 <div class="tr_cityinfo">
        
        <div class="tr_info">
		<div class="tr_infotit"><h3 class="tr_info_stit">${dto.e_name}의 시차와 비행시간&nbsp;<i class="fas fa-clock fa-lg"></i></h3></div>
		<table border=1 align=center class="tr_infotable">
			<tr class="tr_info_th">
				<th width=300 style="word-break:break-all" >도시이름</th>
				<th width=300 style="word-break:break-all">오늘의 날씨</th>
				<th width=300 style="word-break:break-all">시차</th>
				<th width=300 style="word-break:break-all">비행시간</th>
			</tr>
			<tr align=center class="tr_info_td" >
				<td>${dto.e_name}</td>
				<td><div class="icon" align=center>
						<img id="wicon" src="" alt="Weather icon" align=center>
					</div>
					<div class='weather' align=center></div></td>
				<td>${dto.e_Para}</td>
				<td>${dto.e_fly}</td>
			</tr>
		</table>
	</div>

<div class="tr_weather_narvar">
        <div class="tr_weather_tit"><h3 class="tr_weather_stit">${dto.e_name}의 날씨&nbsp;<i class="fas fa-cloud-sun-rain fa-lg"></i></h3></div>

		<table border=1 class="tr_weather_tbl">
			<tr class="tr_weather_th">
				<th class='th1'></th>
				<th class='th2' ></th>
				<th class='th3'></th>
				<th class='th4'></th>
				<th class='th5'></th>

			</tr>
			<tr>
				<td class='icon1'><img id="ticon1" src="" alt="Weather icon" width="60px" height="60px"></td>
				<td class='icon2'><img id="ticon2" src="" alt="Weather icon" width="60px" height="60px">
				</td>
				<td class='icon3'><img id="ticon3" src="" alt="Weather icon" width="60px" height="60px"></td>
				<td class='icon4'><img id="ticon4" src="" alt="Weather icon" width="60px" height="60px"></td>
				<td class='icon5'><img id="ticon5" src="" alt="Weather icon" width="60px" height="60px"></td>

			</tr>

			<tr>
				<td class='ondo1'></td>
				<td class='ondo2'></td>
				<td class='ondo3'></td>
				<td class='ondo4'></td>
				<td class='ondo5'></td>

			</tr>

		</table>

	</div>

       <div class="tr_exchange">
		<div class="tr_exchange_tit"><h3 class="tr_exchange_stit">${dto.e_name}의 환율&nbsp;<i class="fas fa-coins"></i></div>
		<div class="m" width=1000 height=200 style="margin-left: 50px;">
			<div id="money1" style="float: left;">
				<input type=text name="anothercity" id="money" style="position:absolute; left:11%;">
				<div id="dmoney"></div>
			</div>
			&nbsp;<i class="far fa-arrow-alt-circle-right fa-lg" id=btn></i>&nbsp; <input
				type=text name="wecity" id="won"><h3 class="wontext">원</h3>
		</div>
		</div>
		<br>
		<br>

		<div class="tr_youtube_narvar" >
			<div class="tr_youtube_tit"><h3 class="tr_youtube_stit">여행 전문가들의 여행기 &nbsp;<i class="fas fa-comment-dots fa-lg"></i></h3></div>
			<!--  div><img src="https://image.flaticon.com/icons/svg/206/206484.svg" class="tr_youtube_bulb"></div-->
         <div class="tr_youtube_video">
			<a href="" class="cinfo" width=500 height=300><img
				class="info_img" src="${dto.e_imglink}"  style="float:left;"></img></a>
				
				
				
			<a href="${dto.e_tiplink}" class="citip" width=500 height=300><img
				class="tip_img" src="${dto.e_tipimg}"  style="float:left;"></img></a>
				<div class="info_img_tit"><h3 class="info_img_stit">여행 시 주의사항&nbsp;<i class="fas fa-exclamation-circle  fa-sm"></i></h3></div>
				<div class="tip_img_tit"><h3 class="tip_img_stit">여행 꿀팁&nbsp;<i class="fab fa-gratipay  fa-sm"></i></h3></div>
				
				<div><i class="far fa-play-circle fa-7x" id=tr_youtubeplay1></i></div>
	      </div>	
		</div>
		
		</div>



	</c:forEach>
	
	
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
$(document).ready(function(){

      $.getJSON('https://api.openweathermap.org/data/2.5/onecall?'+$('#lat').val()+'&appid=361d5cd175987231a1f06dad53baf134&units=metric',function(data){
          
           var day1= [];
           var temp=[];
           var wicon=[];
           var weather=data['daily'][0]['weather'][0]['main'];
           infourl =$('#link').val()
        for(i=0; i<data['daily'].length; i++){
            var arr=(data['daily'][i]['dt'])
          ;
           var day=Math.ceil(data['daily'][i]['temp']['day']) 
            var icon=(data['daily'][i]['weather'][0]['icon'])  
                iconurl = "http://openweathermap.org/img/w/" + icon+ ".png";

                  date=new Date(arr*1000)
                  e=date.getMonth()+1;
                  s=date.getDate();

                  day1.push(e+'/'+s)
                  temp.push(day);
                  wicon.push(iconurl);
         
                  
            
               }

        	
        	  $('#wicon').attr('src',wicon[0]);
              $('.weather').append(weather+'<br>');
              $('.weather').append(temp[0]);
              
                  $('.th1').append(day1[0]);
                  $('.th2').append(day1[1]);
                  $('.th3').append(day1[2]);
                  $('.th4').append(day1[3]);
                   $('.th5').append(day1[4]);

                   $('.ondo1').append(temp[0]);
                  $('.ondo2').append(temp[1]);
                  $('.ondo3').append(temp[2]);
                  $('.ondo4').append(temp[3]);
                   $('.ondo5').append(temp[4]);

                    $('#ticon1').attr('src',wicon[0]);
                  $('#ticon2').attr('src',wicon[1]);
                  $('#ticon3').attr('src',wicon[2]);
                  $('#ticon4').attr('src',wicon[3]);
                  $('#ticon5').attr('src',wicon[4]);
                  $('#dmoney').append($('#city_money').val())
                  $('.cinfo').attr('href',infourl)
                 
                  $(document).on("click","#btn",function(){
                     $('#won').val($('#money').val()*eval($('#change').val()));
                  })


       });
      
      
           
    });

</script>

</html>