<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8" />

    <link rel="stylesheet" type="text/css" href="/planner/resources/mainpage.css">
   <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
      <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
      <script src="https://kit.fontawesome.com/765d58648e.js" crossorigin="anonymous"></script>
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
 <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display=swap" rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Kufam:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

    <title>홈</title>
  
</head>

<body>
  <div class="narvar"></div>
	<div align="center" >
        <ul id="hj_menu">
          
            <li class=hj_m1><a href="http://52.14.162.119:8080/planner/"><div class="mainlogo"><img src="https://cdn.pixabay.com/photo/2018/02/04/01/54/paper-planes-3128885_960_720.png" width="50px" height="50px" ></div>HUMAN<br>&nbsp;&nbsp;&nbsp;&nbsp;PLAN&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li class=hj_m2><a href="hj_plan"><h3 class="hj_menu">일정 만들기</h3></a></li>
            <li class=hj_m2><a href="tripInfo " class="hj_menu1"><h3>여행정보</h3></a></li>
            <li class=hj_m2><a href="hj_yplan" class="hj_menu2"><h3>인기 여행일정 및 후기</h3></a></li>
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
   
 
   <div class="swiper-container slider1">
<div class="swiper-wrapper">
      <div class="swiper-slide"><img src="/planner/resources/mainimg/sky.jpg" width="100%" height="600px"/><h2 class="h1">Humanplan과 함께 떠나요</h2></div>
      <div class="swiper-slide "><img src="/planner/resources/mainimg/jeju.jpg" width="100%" height="600px"/><h2 class="h2">세계 자연유산 보물</h2><h2 class="h2jeju">제주도</h2></div>
      <div class="swiper-slide"><img src="/planner/resources/mainimg/bangkok.jpg" width="100%" height="600px"/><h2 class="h3">동남아 Best 5</h2><h2 class="h3bangkok">방콕</h2></div>
      <div class="swiper-slide "><img src="/planner/resources/mainimg/paris.jpg" width="100%" height="600px"/><h2 class="h4">유럽 이 도시 어때요?</h2><h2 class="h4paris">파리</h2></div>
      <div class="swiper-slide "><img src="/planner/resources/mainimg/venice.jpg" width="100%" height="600px"/><h2 class="h5">아름다운 도시,</h2><h2 class="h5venice">베네치아</h2></div>
      <div class="swiper-slide "><img src="/planner/resources/mainimg/london.jpg" width="100%" height="600px"/><h2 class="h6">영화같은 여행 어때요?</h2><h2 class="h6london">런던</h2></div>
      <div class="swiper-slide "><img src="/planner/resources/mainimg/santorini.jpg" width="100%" height="600px"/><h2 class="h7">동화같은 도시,</h2><h2 class="h7Santorini">산토리니</h2></div>
    
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
    <!-- Add Arrows -->
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
  </div>
</div>

  <br>
  <br>
  
  
 <div class="planner1">
  <div class="titmain">
  <div class="plannertit" align=center>
    <h2>여행 계획을 세워 여행을 떠나요!</h2>
 </div>
  <div class="tittext">
  <h3 class="title" style="font-size:35px; padding:20px;">호텔,쇼핑,
  <br>관광지,호텔</h3>
  <p class="stitle" style="font-size:30px;">계획을 세워 가볍게 <br>
     여행을 떠나요</p>
   <br>
  <button onclick="location.href='hj_plan'" class="button1">GO!</button>
  </div>
  <div  class="titimg">
  <a href="hj_plan">
   <img src="https://www.newzealand.com/assets/Tourism-NZ/Fiordland/53df91f869/img-1536159552-4021-21809-644F8A7F-AF18-2CD8-43A48F9C285BEE27__aWxvdmVrZWxseQo_FocalPointCropWzQyNyw2NDAsNjUsNTAsODUsImpwZyIsNjUsMi41XQ.jpg" width=100% height=100%/></a>
   </div>
   </div>
  </div>

  <br>
  <br>
   
   <div class="infoBest">
 

   <div class="BEST" ><h2 class="whatplan">여기 여행 어때요?</h2>
    <br>
   
    <p class="triptip">여행꿀팁과 후기와 함께<br>
       여행 도시를 정해보아요!
    </p>
    <br>
    <br>
    <button onclick="location.href='tripInfo'" class="button2" >더보기</button>
   
   </div>


   <div class="youtube1">
    <a href="https://www.youtube.com/watch?v=zSOQc4aj44o&list=PLCrXg_tw8p8EGlLNRhESjVHHinSLd5Wep&index=11&t=0s"><img src="https://img.youtube.com/vi/zSOQc4aj44o/0.jpg" width=400 height=300></a>
    <i class="far fa-play-circle fa-7x"></i>
</div>
<div class="youtube2">
    <a href="https://www.youtube.com/watch?v=3GN13R537pk"><img src="https://img.youtube.com/vi/3GN13R537pk/0.jpg" width=400 height=300></a>
    <i class="far fa-play-circle fa-7x"></i>
</div>
<div class="youtube3">
    <a href="https://www.youtube.com/watch?v=2Jod0xCUNCg&list=PLCrXg_tw8p8EGlLNRhESjVHHinSLd5Wep&index=18&t=0s"><img src="https://img.youtube.com/vi/2Jod0xCUNCg/0.jpg" width=400 height=300></a>
    <i class="far fa-play-circle fa-7x"></i>
</div>
   
  
   
</div>   

<div class="scs1">
<div class="swiper-container slider">
<h2 class="BEST10" align=center>BEST 10 여행지 추천</h2>
                <form action="cities" id="cities" method="post">
                    <input type="hidden" id="lat" name="lat" value="">
                    <input type="hidden" id="money" name="money" value="">
                    <input type="hidden" id="change" name="change" value="">
                    <input type="hidden" id="kor" name="kor" value="">
                    <input type="hidden" id="link" name="link" value="">
                </form>
  <div class="swiper-wrapper">
    <div class="swiper-slide s1" ><a city_name="London" class='city' ><img src="https://cdn.londonandpartners.com/visit/general-london/areas/river/76709-640x360-houses-of-parliament-and-london-eye-on-thames-from-above-640.jpg" width=500px height=500px> </a><h2 class="imgtext">LONDON</h2></div>
    <div class="swiper-slide s1"><a city_name="Hongkong" class='city' ><img src="https://dimg.donga.com/wps/NEWS/IMAGE/2020/06/09/101422634.2.jpg" width=500px height=500px></a><h2 class="imgtext">HONGKONG</h2></div>
    <div class="swiper-slide s1"><a city_name="Paris" class='city' ><img src="https://s3-eu-west-2.amazonaws.com/enabled.deploy.bigfoot.tours/wp-content/uploads/2019/04/15111449/seine-in-paris-KTMQ5PG.jpg" width=500px height=500px></a><h2 class="imgtext">PARIS</h2></div>
    <div class="swiper-slide s1"><a city_name="Istanbul" class='city' ><img src="https://dimg.donga.com/ugc/CDB/SHINDONGA/Article/5c/a1/59/f4/5ca159f41a66d2738de6.jpg" width=500px height=500px></a><h2 class="imgtext"> ISTANBUL</h2></div>
    <div class="swiper-slide s1"><a city_name="Venezia" class='city' ><img src="https://www.hotelrestaurant.co.kr/data/photos/20171041/art_15075973560525_8f274c.bmp" width=500px height=500px></a><h2 class="imgtext">VENICE</h2></div>
    <div class="swiper-slide s1"><a city_name="Jeju" class='city' ><img src="https://www.usajutour.com/ERPWeb/Data/Goods/FJU2015120171102140156995.jpg" width=500px height=500px></a><h2 class="imgtext">JEJU</h2></div>
    <div class="swiper-slide s1"><a city_name="Taipei" class='city' ><img src="https://www.socuripass.com/wp-content/uploads/2019/11/tpe-taipei101-observatory-1.jpg" width=500px height=500px></a><h2 class="imgtext">TAIPEI</h2></div>
    <div class="swiper-slide s1"><a city_name="Singapore" class='city' ><img src="https://tourimage.interpark.com/BBS/Tour/FckUpload/201506/6356998679951103491.jpg" width=500px height=500px></a><h2 class="imgtext">SINGAPORE</h2></div>
    <div class="swiper-slide s1"><a city_name="Bangkok" class='city' ><img src="https://travelblog.expedia.co.kr/wp-content/uploads/2016/10/01.jpg" width=500px height=500px></a><h2 class="imgtext">BANGKOK</h2></div>
    <div class="swiper-slide s1"><a city_name="Barcelona" class='city' ><img src="https://www.eurail.com/content/dam/images/eurail/sagrada_familia_barcelona_spain.adaptive.767.0.jpg"  width=500px height=500px></a><h2 class="imgtext">BARCELONA</h2></div>
  </div>
  <!-- Add Pagination -->
  
  <!-- Add Arrows -->
  <div class="swiper-button-next nx" style="position:absolute; top:60%; color:white;"></div>
  <div class="swiper-button-prev pr" style="position:absolute; top:60%; color:white;"></div>
</div>
</div>


 
<div class="BestN1">
 

  <div class="BestN1tit" ><h2 class="whatplan">BEST 여행후기 </h2>
   <br>
  
   <p class="triptip">여행후기를 보고 이 곳으로 <br>
    떠나보는거 어때요?
   </p>
   <br>
   <br>
   <button onclick="location.href='hj_yplan'" class="button2" >더보기</button>

   <div class="Garland">
    <img src="https://www.sgkim.co.kr/resource/image/mobile/icon/best_icon.png" width=60 height=60>
</div>


<div>
  <img src="https://cdn.pixabay.com/photo/2013/07/13/01/20/browser-155555_640.png" class=browser>
  <div class="BESTN1Reviewtit">
    <h3 class="Reviewtit">가족들과 함께한 방콕 여행</h3>
  </div>
  
  <div class="BESTN1Reviewtext">
    <p>가족들과 함께한 방콕여행 처음으로 여행플래너를 사용해서 가족여행을 떠났다.<br>여행플래너를 사용하니 여행을 가볍게 떠날 수 있었 다. 
    다음 가족여행을 떠날때도 HUMANPLAL과 함께 해야겠다.</p>
  </div>
</div>



<div class="like">
  <img src="https://www.m-letter.or.kr/test/Responsive2018/images/board/m_best_list_con.png" width=35px height=35px>
</div>
<div class="like1">
 <h3>1,450</h3>
</div>

<div class="love">
  <img src="https://png.pngtree.com/png-vector/20190228/ourlarge/pngtree-love-heart-icon-design-template-vector-isolated-png-image_707576.jpg" width=45px height=45px>

 </div>
 
<div class="love1">
  <h3>1,500</h3>

 </div>
   
  </div>


  <div class="humanplan">
    <div><h2 class="humanplantit">HUMANPLAN과 여행을 떠나요</h2></div>
    <div class="humanplanimg1">
      <a href="hj_plan"><img src="https://img1.daumcdn.net/thumb/R720x0.q80/?scode=mtistory2&fname=http%3A%2F%2Fcfile26.uf.tistory.com%2Fimage%2F995EF8375D0861E10212F8" width=450px height=300px></a>
      <h3 class="humanplantext">여행일정</h3>
 </div>
 
     
    
    <div class="humanplanimg2">
      <a href="tripInfo"><img src="https://img.kbs.co.kr/kbs/620/nsimg.kbs.co.kr/data/news/2019/11/27/4331817_Z1f.jpg" width=450px height=300px></a>
      <h3 class="humanplantext">여행정보</h3>
      
    </div>

    <div class="humanplanimg3">
      <a href="hj_yplan"><img src="https://img1.daumcdn.net/thumb/R720x0.q80/?scode=mtistory2&fname=http%3A%2F%2Fcfile30.uf.tistory.com%2Fimage%2F99AB684B5C41687637673C" width=450px height=300px></a>
      <h3 class="humanplantext">여행후기</h3>
    </div>


  
   </div>

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
  var cities_array= {
		  "London" : ['런던', 'lat=51.5287718&lon=-0.2416802', 'https://www.0404.go.kr/dev/country_view.mofa?idx=159&hash=&chkvalue=no2&stext=&group_idx=9&alert_level=0', '파운드', '1551.81' ],
		  "Hongkong" : ['홍콩', 'lat=22.3524825&lon=113.8475045',  'https://www.0404.go.kr/dev/country_view.mofa?idx=377&hash=&chkvalue=no2&stext=&group_idx=1&alert_level=0', '달러' , '152.90' ],
		  "Paris" : ['파리', 'lat=48.8588377&lon=2.2770199', 'https://www.0404.go.kr/dev/country_view.mofa?idx=248', '유로', '1404.70' ],
		  "Taipei" : ['타이페이', 'lat=25.0174719&lon=121.366294', 'https://www.0404.go.kr/dev/country_view.mofa?idx=372&hash=&chkvalue=no2&stext=&group_idx=1&alert_level=0', '달러', '40.36' ],
		  "Jeju" : ['제주도', 'lat=37.5640455&lon=126.8340033', 'https://www.youtube.com/watch?v=lR-T0xwTMSk',  '달러', '1234'  ],
		  "Istanbul" : ['이스탄불', 'lat=41.193318&lon=28.3817312', 'https://www.0404.go.kr/dev/country_view.mofa?idx=260&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '리라', '160.97' ],
		  "Singapore" : ['싱가포르', 'lat=1.3143394&lon=103.7041639', 'https://www.0404.go.kr/dev/country_view.mofa?idx=134&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '달러', '866.93' ],
		  "Bangkok" : ['방콕', 'lat=25.0174719&lon=121.366294', 'https://www.0404.go.kr/dev/country_view.mofa?idx=260&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '바트', '37.83' ],
		  "Barcelona" : ['바르셀로나', 'lat=41.3948976&lon=2.0787283', 'https://www.0404.go.kr/dev/country_view.mofa?idx=128', '유로', '1404.70' ],
		  "Venezia" : ['베네치아', 'lat=45.4042007&lon=12.1015555', 'https://www.0404.go.kr/dev/country_view.mofa?idx=179', '유로', '1404.70' ]
  }
  
  $(document).ready(function(){
    var swiper = new Swiper('.swiper-container', {
      spaceBetween: 30,
      loop: true,
      centeredSlides: true,
      autoplay: {
        delay: 5000,
        disableOnInteraction: false,
      },
      pagination: {
        el:'.swiper-pagination',
        clickable: true,
       /*type:'fraction',*/
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
    var swiper1 = new Swiper('.slider', {
      slidesPerView: 3,
      spaceBetween: 30,
      slidesPerGroup: 3,
      loop: true,
      loopFillGroupWithBlank: true,
     
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
  })
    .on('click', '.city', function(){
        var city_name=$(this).attr('city_name')
        $('#lat').val(cities_array[city_name][1]);
        $('#kor').val(cities_array[city_name][0]);
        $('#link').val(cities_array[city_name][2]);
        $('#money').val(cities_array[city_name][3]);
        $('#change').val(cities_array[city_name][4]);
        $('#cities').submit();
    })
  </script>
  </html>