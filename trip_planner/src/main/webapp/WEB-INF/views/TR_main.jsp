<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/planner/resources/cssmap/cssmap-continents/cssmap-continents.css" media="screen" />
	<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Kufam:wght@500&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
	
    <script src="https://kit.fontawesome.com/765d58648e.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
    <title>여행 정보</title>
</head>
<style>
   
      body {
          margin-left:0;
/*           margin-right:0; */
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
        margin-top:2px;
        font-weight: bold;   
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
    .hj_tr1 *{
        width:1500px;height:60px;
       /*border:1px solid black;*/
        /* position: absolute;
        z-index: 100; */
        text-align: center;
        font-size:35px;
     
        
    }
   .hj_tr3 *{
	   width:1500px;height: 50px;
	   text-align: center;
       font-size:27px;
       }
     .hj_tr4 *{
		 width:1500px;height: 50px;
		 text-align: center;
		 font-size:23px;
     }
       
   .hj_tr2 *{
        width:1500px;height: 50px;
       /* border:1px solid black;*/
        /* position: absolute;
        z-index: 100; */
        text-align: center;
    	font-size:24px;
    }
    
   
   
    .tr_navar_underline{
    margin-top:2.5%;
    
    width:100%;
    height:8px;
    background-color: rgb(32, 51, 65);
    }
    
    #asia_box{
        width:100%;height:400px;
        display: none;
        /* background-color: green;*/
        position: relative;
        z-index: 0; 
        margin-left: auto;
        margin-right: auto;
        margin-bottom:-26%;
        
       }
    #asia_table{
       
        width:100%;height:400px;
       /* border:1px solid black;*/
        font-size:20px;
        background-color:rgb(70, 70, 129);
        color:white;
        font-weight:bold;
        font-family: 'Poor Story';
   
    }
    
 
    
    #oceania_box{
        width:100%;height:400px;
        display: none;
        position: relative;
        z-index: 0; 
        margin-left: auto;
        margin-right: auto;
        margin-bottom:-26%;
    }
    #oceania_table{
        width:100%;height:400px;
        border:1px solid black;
        font-size:20px;
        background-color:rgb(70, 70, 129);
        color:white;
        font-weight:bold;
        font-family: 'Poor Story';
    }
    #north-america_box{
        width:100%;height:300px;
        display: none;
        position: relative;
        z-index: 0; 
        margin-left: auto;
        margin-right: auto;
        margin-bottom:-3%;
    }
    #north-america_table{
        width:100%;height:300px;
        border:1px solid black;
        font-size:20px;
        background-color:rgb(70, 70, 129);
        color:white;
        font-weight:bold;
        font-family: 'Poor Story';
    }
    #europe_box{
        width:100%;height:400px;
        display: none;
        position: relative;
        z-index: 0; 
        margin-left: auto;
        margin-right: auto;
        margin-bottom:-26%;
        
    }
    #europe_table{
        width:100%;height:400px;
        border:1px solid black;
        font-size:20px;
        background-color:rgb(70, 70, 129);
        color:white;
        font-weight:bold;
        font-family: 'Poor Story';
        
    }
    #south-america_box{
        width:100%;height:300px;
        display: none;
        position: relative;
        z-index: 0; 
        margin-left: auto;
        margin-right: auto;
        margin-bottom:-26%;
    }
    #south-america_table{
        width:100%;height:300px;
        border:1px solid black;
        font-size:20px;
        background-color:rgb(70, 70, 129);
        color:white;
        font-weight:bold;
        font-family: 'Poor Story';
    }
    #africa_box{
        width:100%;height:400px;
        display: none;
        position: relative;
        z-index: 0; 
        margin-left: auto;
        margin-right: auto;
        margin-bottom:-26%;
    }
    #africa_table{
        width:100%;height:400px;
        border:1px solid black;
        font-size:20px;
        background-color:rgb(70, 70, 129);
        color:white;
        font-weight:bold;
        font-family: 'Poor Story';
    }
    .city{
        text-decoration: none;
        border:0;
        color:white;    

    }
    .city:hover{
       color:rgba(246, 246, 13, 0.863);
    }
    
     .tr_countryimg{
    /*margin-top:5px;*/
    width:30px;
    height:20px;
  
    }
    
       /*마지막 바*/
    .lastnarvar{
  position:relative;
  width:100%;
  height:350px;
  /*height:100%;*/
  top:-2%;
 
  background-color: rgb(32, 51, 65);

}

 .lastnarvar1{
  position:relative;
  width:100%;
  height:350px;
  /*height:100%;*/
  /*top:-2%;*/
  margin-top:30%;
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
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- CSSMap SCRIPT -->
<script type="text/javascript" src="https://cssmapsplugin.com/5/jquery.cssmap.min.js"></script>
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
			<li class=hj_m2><a href="tripInfo " class="hj_menu1"><h3>여행정보</h3></a></li>
			<li class=hj_m2><a href="hj_yplan" class="hj_menu2"><h3>인기여행일정 및 후기</h3></a></li>
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
            <div>
                <form action="cities" id="cities" method="post">
                    <input type="hidden" id="lat" name="lat" value="">
                    <input type="hidden" id="money" name="money" value="">
                    <input type="hidden" id="change" name="change" value="">
                    <input type="hidden" id="kor" name="kor" value="">
                    <input type="hidden" id="link" name="link" value="">
                </form>
            </div>

		</ul>
	</div>
    <br><br>

    <div id="map-continents">
        <ul class="continents">
            <li class="c1"><a href="#africa">Africa</a></li>
                <!-- <ul class=asia style='display: none;'>
                    <li>대한민국</li>
                    <li>태국</li>
                </ul> -->
            <li class="c2"><a href="#asia">Asia</a></li>
            <li class="c3"><a href="#oceania">Oceania</a></li>
            <li class="c4"><a href="#europe">Europe</a></li>
            <li class="c5"><a href="#north-america">North America</a></li>
            <li class="c6"><a href="#south-america">South America</a></li>
        </ul>
    </div>
    <div id='asia_box'>
        <table id='asia_table'>
            <tr class='hj_tr1'>
                <td colspan="14">아시아</td>
            </tr>
            <tr class='hj_tr4'>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" class="tr_countryimg">&nbsp;국내</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/f/fa/Flag_of_the_People%27s_Republic_of_China.svg" class="tr_countryimg">&nbsp;중국</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg" class="tr_countryimg">&nbsp;일본</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/7/72/Flag_of_the_Republic_of_China.svg" class="tr_countryimg">대만</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/f/fa/Flag_of_the_People%27s_Republic_of_China.svg" class="tr_countryimg" >&nbsp;중화<br>&nbsp;&nbsp;&nbsp;인민공화국</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Flag_of_Thailand.svg/225px-Flag_of_Thailand.svg.png" class="tr_countryimg" >&nbsp;태국</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/225px-Flag_of_Vietnam.svg.png" class="tr_countryimg" >&nbsp;베트남</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/225px-Flag_of_Singapore.svg.png" class="tr_countryimg" >&nbsp;싱가포르</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Flag_of_Malaysia.svg/300px-Flag_of_Malaysia.svg.png" class="tr_countryimg" >&nbsp;말레이시아</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Flag_of_Indonesia.svg/225px-Flag_of_Indonesia.svg.png" class="tr_countryimg" >&nbsp;인도네시아</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Flag_of_Laos.svg/225px-Flag_of_Laos.svg.png" class="tr_countryimg" >&nbsp;라오스</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_the_President_of_Maldives.svg/260px-Flag_of_the_President_of_Maldives.svg.png" class="tr_countryimg" >&nbsp;몰디브</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/c/cb/Flag_of_the_United_Arab_Emirates.svg" class="tr_countryimg" >&nbsp;아랍&nbsp;&nbsp;&nbsp;<br>에미레이트</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Flag_of_the_Philippines.svg/300px-Flag_of_the_Philippines.svg.png" class="tr_countryimg" >&nbsp;필리핀</td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Seoul' class=city>서울</a></td><td><a city_name='Shanghai' class=city>상해</a></td><td><a city_name='Tokyo' class=city>도쿄</a></td><td><a city_name='Taipei' class='city'>타이베이</a></td><td><a city_name='Hongkong' class="city">홍콩</a></td><td><a city_name='Bangkok' class=city>방콕</a></td><td><a city_name='Danang' class=city>다낭</a></td><td><a city_name='Singapore' class=city>싱가포르</a></td><td><a city_name='Kotakinabalu' class=city>코타키나발루</a></td><td><a city_name='Bali' class=city>발리</a></td><td><a city_name='Laos' class=city>라오스</a></td><td><a city_name='Maldives' class=city>몰디브</a></td><td><a city_name='Dubai' class=city>두바이</a></td><td><a city_name='Cebu' class=city>세부</a></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Jeju' class=city>제주도</a></td><td><a city_name='Beijing' class=city>베이징</a></td><td><a city_name='Osaka' class=city>오사카</a></td><td></td><td><a city_name='Macau' class=city>마카오</a></td><td><a city_name='Phuket' class='city'>푸껫</a></td><td><a city_name='Hanoi' class='city'>하노이</a></td><td></td><td><a city_name='Penang' class=city>페낭</a></td><td><a city_name='Jakarta' class=city>자카르타</a></td><td></td><td></td><td></td><td><a city_name='Boracay' class=city>보라카이</a></td>
            </tr>
             <tr class='hj_tr2'>
                <td></td><td></td><td><a city_name='Fukuoka' class=city>후쿠오카</a></td><td></td><td></td><td><a city_name='HuaHin' class=city>후아힌</a></td><td><a city_name='Hochiminh' class=city>호치민</a></td><td></td><td></td><td><a city_name='Yogyakarta' class=city>족자카르타</a></td><td></td><td></td><td></td><td><a city_name='Manila' class=city>마닐라</a></td>
            </tr>
             <tr class='hj_tr2'>
                <td></td><td></td><td><a city_name='Okinawa' class=city>오키나와</a></td><td></td><td></td><td></td><td><a city_name='NhaTrang' class=city>나트랑</a></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
            </tr>
        </table>
    </div>
    <div id='oceania_box'>
        <table id='oceania_table'>
            <tr class='hj_tr1'>
                <td colspan="5">오세아니아</td>
            </tr>
            <tr class='hj_tr3'>
                <td><img src="https://upload.wikimedia.org/wikipedia/en/archive/b/b9/20190118170738%21Flag_of_Australia.svg" class="tr_countryimg">&nbsp;호주</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/3/3e/Flag_of_New_Zealand.svg" class="tr_countryimg">&nbsp;뉴질랜드</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Fiji.svg/280px-Flag_of_Fiji.svg.png" class="tr_countryimg">&nbsp;피지</td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Sydney' class=city>시드니</a></td><td><a city_name='Queenstown' class=city>퀸즈아일랜드</a></td><td><a city_name='Fiji' class=city>피지</a></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Melbourne' class=city>멜버룬</a></td><td><a city_name='Auckland' class=city>오클랜드</a></td><td></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Brisbane' class=city>브리즈번</a></td><td><a city_name='Wellington' class=city>웰링턴</a></td><td></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='GoldCoast' class=city>골드코스트</a></td><td><a city_name='Paihia' class=city>파이히아</a></td><td></td>
            </tr>
            
        </table>
    </div>
    <div id='north-america_box'>
        <table id=north-america_table>
            <tr class='hj_tr1'>
                <td colspan=4>북아메리카</td>
            </tr>
            <tr class='hj_tr3'>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Flag_of_the_United_States.svg/285px-Flag_of_the_United_States.svg.png" class="tr_countryimg">&nbsp;미국</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Flag_of_Canada.svg/800px-Flag_of_Canada.svg.png" class="tr_countryimg">&nbsp;캐나다</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/290px-Flag_of_Mexico.svg.png" class="tr_countryimg">&nbsp;멕시코</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Flag_of_Cuba.svg/270px-Flag_of_Cuba.svg.png" class="tr_countryimg">&nbsp;쿠바</td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='NewYork' class=city>뉴욕</a></td><td><a city_name='Vancouver' class=city>밴쿠버</a></td><td><a city_name='MexicoCity' class=city>멕시코시티</a></td><td><a city_name='LaHabana'  class=city>하바나</a></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='LA' class=city>LA(로스앤젤레스)</a></td><td><a city_name='Montreal' class=city>몬트리올</a></td><td><a city_name='Cancun' class=city>칸쿤</a></td><td><a city_name='Varadero' class=city>바라데로</a></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='SanFrancisco' class=city>샌프라시스코</a></td><td><a city_name='Banff' class=city>밴프</a></td><td><a city_name='GuanajuatoCity' class=city>과나후아토</a></td> <td></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='LasVegas' class=city>라스베이거스</a></td><td><a city_name='Toronto' class=city>토론토</a></td> <td></td> <td></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Washington' class=city>워싱턴D.C</a></td><td><a city_name='Quebec' class=city>퀘백</a></td> <td></td> <td></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Chicago' class=city>시카고</a></td><td><a city_name='Ottawa' class=city>오타와</a></td> <td></td> <td></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Seattle' class=city>시애틀</a></td> <td></td> <td></td> <td></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Boston' class=city>보스턴</a></td> <td></td> <td></td> <td></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Guam' class=city>괌</a></td> <td></td> <td></td> <td></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Saipan' class=city>사이판</a></td> <td></td> <td></td> <td></td>
            </tr>
              <tr class='hj_tr2'>
                <td><a city_name='Hawaii' class=city>하와이</a></td> <td></td> <td></td> <td></td>
            </tr>
        </table>
    </div>
    <div id='europe_box'>
        <table id='europe_table'>
            <tr class='hj_tr1'>
                <td colspan=18>유럽</td>
            </tr>
            <tr class='hj_tr4'>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Flag_of_the_United_Kingdom.svg/300px-Flag_of_the_United_Kingdom.svg.png" class="tr_countryimg" >&nbsp;영국</a></td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flag_of_France.svg/225px-Flag_of_France.svg.png" class="tr_countryimg" >&nbsp;프랑스</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/6/65/Flag_of_Belgium.svg" class="tr_countryimg" >&nbsp;벨기에</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/0/03/Flag_of_Italy.svg" class="tr_countryimg" >&nbsp;이태리</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Flag_of_Spain_%28Civil%29.svg/200px-Flag_of_Spain_%28Civil%29.svg.png" class="tr_countryimg" >&nbsp;스페인</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Flag_of_Hungary.svg/300px-Flag_of_Hungary.svg.png" class="tr_countryimg" >&nbsp;헝가리</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/b/ba/Flag_of_Germany.svg" class="tr_countryimg" >&nbsp;독일</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Flag_of_the_Netherlands.svg/225px-Flag_of_the_Netherlands.svg.png" class="tr_countryimg" >&nbsp;네덜&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;란드</td>
                <td><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQIAAADDCAMAAABeUu/HAAAAQlBMVEXGDDD////eiJTLKEXGCS7EACPotLnFACfYa3vDABz78PLnrbXKHj7ab4D++Pn99ffJEzjDABfWZnbBAAbx0dXdgo77hZniAAABjElEQVR4nO3ayVFDQRAFwWoQqwCx+u8qOCBx+KMIFGQ58Cby2tP18p6eXx6Pddi/rh/cWLvl3d3P8W4f1g9urPX9QnCGxT8XAgQIQhCCEIQgBCEIQQhCEIIQhCAEIQhBCEIQghCEIAQhCEEIQhCCEIQgBCEIQQhCEIIQhCAEIQhBCEIQghCEIAQhCEEIQhCCEIQgBCEIQQhCEIIQhCAEIQhBCEIQghCEIAQhCEEIQhCCEHSBBDfLe3s/RfCxfnBjXa1vf4Lg8+sMg9vqxHP/SQgQIBgEg2AQDIJBMAgGwSAYBINgEAyCQTAIBsEgGASDYBAMgkEwCAbBT26KVy7LN2c411/c/4L1IUCAIAQhCEEIQhCCEIQgBCEIQQhCEIIQhCAEIQhBCEIQghCEIAQhCEEIQhCCEIQgBCEIQQhCEIIQhCAEIQhBCEIQghCEIAQhCEEIQhCCEIQgBCEIQQhCEIIQhCAEIQhBCEIQghCEIAQhCEEXSLBb3i8E6wc31vXynp5fHo912L+uH9zYNzk9XAM3HneDAAAAAElFTkSuQmCC" class="tr_countryimg" >&nbsp;덴마크</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Civil_Ensign_of_Switzerland.svg/250px-Civil_Ensign_of_Switzerland.svg.png" class="tr_countryimg" >&nbsp;스위스</td>
                <td><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARwAAACxCAMAAAAh3/JWAAAAHlBMVEUAaqf+zAD/0QAAaKlPfJZggpAAZqpdgZFKepiBj4EDfUmrAAABn0lEQVR4nO3ay43CUBBFwYc9/PJPeIig8IKWkDmVQKvP+q41Y79ul3e26z50/csVB4oDxYHiQHGgOFAcKA4UB4oDxYHiQHGgOFAcKA4UB4oDxYHiQHGgOFAcKA4UB4oDxYHiQHGgOFAcKA4UB4oDxYHiQHGgOFAcKA4UB4oDxYHiQHGgOFAcKA4UB4oDxYHiQHGgOFAcKA4UB4oDxYHiQHGgOFAcKA4UB4oDxYFzxNln3O4H4txvQ9c/ZP3NeDwPxHk+hq5/yNqmvG3zqvPl1oEfflZxoDhQHCgOFAeKA8WB4kBxoDhQHCgOFAeKA8WB4kBxoDhQHCgOFAeKA8WB4kBxoDhQHCgOFAeKA8WB4kDLLmgTCK1JYWzBe4od8pDiQHGgOFAcKA4UB4oDxYHiQHGgOFAcKA4UB4oDxYHiQHGgOFAcKA4UB4oDxYHiQHGgOFAcKA4UB4oDxYHiQHGgOFAcKA4UB4oDxYHiQHGgOFAcKA4UB4oDxYHiQHGgOFAcKA4UB4oDxYHiQHGgOFAcKA4UB4oDxYHiQHGgOHCKOP/ItlPLsoEE4gAAAABJRU5ErkJggg==" class="tr_countryimg" >&nbsp;스웨덴</td>
                <td><img src="https://i.pinimg.com/originals/1c/5c/19/1c5c19d426ba02df2ee6a1bcc0c0662d.png" class="tr_countryimg" >&nbsp;노르&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;웨이</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/1/12/Flag_of_Poland.svg" class="tr_countryimg" >&nbsp;폴란드</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Finland.svg/300px-Flag_of_Finland.svg.png" class="tr_countryimg" >&nbsp;핀란드</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Greece.svg/225px-Flag_of_Greece.svg.png" class="tr_countryimg" >&nbsp;그리스</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Flag_of_Malta.svg/300px-Flag_of_Malta.svg.png" class="tr_countryimg" >&nbsp;몰타</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/f/f3/Flag_of_Russia.svg" class="tr_countryimg" >&nbsp;러시아</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/225px-Flag_of_Turkey.svg.png" class="tr_countryimg" >&nbsp;터키</td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='London' class='city'>런던</a></td><td><a city_name='Paris' class='city'>파리</a></td><td><a city_name='Gent' class='city'>겐트</a></td><td><a city_name='Roma' class='city'>로마</a></td><td><a city_name='Madrid' class='city'>마드<br>리드</a></td><td><a city_name='Budapest' class='city'>부다<br>페스트</a></td><td><a city_name='Berlin' class='city'>베를린</a></td><td><a city_name='Amsterdam' class='city'>암스테르담</a></td><td><a city_name='Copenhagen' class='city'>코펜<br>하겐</a></td><td><a city_name='Geneva' class='city'>제네바</a></td><td><a city_name='Stockholm' class='city'>스톡홀름</a></td><td><a city_name='Oslo' class='city'>오슬로</a></td><td><a city_name='Warsaw' class='city'>바르샤바</a></td><td><a city_name='Helsinki' class='city'>헬싱키</a></td><td><a city_name='Athens' class='city'>아테네</a></td><td><a city_name='Malta' class='city'>몰타</a></td><td><a city_name='Moscow' class='city'>모스크바</a></td><td><a city_name='Istanbul' class='city'>이스탄불</a></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Edinburgh' class='city'>에든<br>버러</a></td><td><a city_name='Nice' class='city'>니스</a></td><td><a city_name='Bruxelles' class='city'>브뤼쉘</a></td><td><a city_name='Milano' class='city'>밀라노</a></td><td><a city_name='Barcelona' class='city'>바르<br>셀로나</a></td><td></td><td><a city_name='Munich' class='city'>뮌헨</a></td><td><a city_name='Rotterdam' class='city'>로테르담</a></td><td></td><td><a city_name='Zurich' class='city'>취리히</a></td><td></td><td></td><td><a city_name='Krakow' class='city'>크라쿠프</a></td><td><a city_name='Rovaniemi' class='city'>로바니에미</a></td><td><a city_name='Santorini' class='city'>산토리니</a></td><td></td><td><a city_name='SaintPetersburg' class='city'>상트페테르<br>부르크</a></td><td></td>
            </tr>
            <tr class='hj_tr2'>
                <td></td> <td><a city_name='Lyon' class='city'>리옹</a></td> <td></td> <td><a city_name='Venezia' class='city'>베네치아</a></td> <td></td> <td></td> <td><a city_name='FrankfurtamMain' class='city'>프랑크<br>푸르트</a></td> <td></td> <td></td> <td><a city_name='Luzern' class='city'>루체른</a></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td><a city_name='Vladivostok' class='city'>블라디<br>보스토그</a></td> <td></td>
            </tr>
            <tr class='hj_tr2'>
                <td></td> <td><a city_name='Versailles' class='city'>베르<br>사유</a></td> <td></td> <td></td> <td></td> <td></td> <td><a city_name='Nuremberg' class='city'>뉘른베르크</a></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td>
            </tr>
        </table>
    </div>
    <div id='south-america_box'>
        <table id='south-america_table'>
            <tr class='hj_tr1'>
                <td colspan=7>남아메리카</td>
            </tr>
            <tr class='hj_tr3'>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/1/1a/Flag_of_Argentina.svg" class="tr_countryimg" >&nbsp;아르헨티나</td>
                <td><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQwAAAC8CAMAAAC672BgAAAA/FBMVEUAmzr+3wAAJ3b/4gD///8AJXUAmTsAlzwAInT33QD/5QD/6AAAF3AAF3no6/IAI3cAD24sojUjOn8AHnPm2AsAHng0SYgACG0AEHrv+fGvt84AAGwdpEzGzRcACnqEkLSZo8AQLXOw2rxFpzJUqzDv2wW6yRrL5tOiwSDU1eVPYJVBVY9qsCxteaWMyZ3Z7N7Y0xHYwiFkZ1tArmBou39WtHKUvSNZX1/mzQ99tigAAHuWjkd7eFRLVGR3wIy8rDRxcVehlkawojvNuSmIg02d1q0lOW8LMG4pPWw/TWQaPIrx2DYwQ2oAjADt2Vju46Xu5rfJvV/q5sbx4ott36HMAAAMUElEQVR4nO1dC3eaShclMINIEAjUt1eQPgxa9BpjTfNO0zR93u/1///LN4OPaGSGhyYizl53tc1avY3snDlnz54zB45jYGBgYGBgYGBgYGBgYGBgYGBgYGBgYNgCRP8/Bozc2zdv3ua2/SlSATF3LBwcCMc5Fhxc7t17xAVi4/27fQ8OkfvgU+HT8WGvM4eY+5ifc4HYyH/c37UiHv21QIVPx19H+8mGKH4+eMYFYuPgs7iHdOSO/l6hwqfj76N9S6SieBxIhU/H8X4FR+7dGyIXiI03e1RlF+spgY69qbK5j+9DuMAS7OM+BMdqPSXQkf0qK+Y+5yNxgSXY52xLMFI9JdCR5Sorip+EGFwgNoRPWa2yube0ekoKjkwaHTSZRaUjgxJsZlskYCNrRke4zKLSkSUJ9sy2SMBGdoyOqDKLSkc2JBiqp6u2RQI2smB00GWWIMjy4RyyTJMhOy/BqLaFfJgf3Fzc/v7GF8/Pi/y337cXN4P8oZxRo4NsWwhyfnA3bhUqhaKmQcjzEGpaEX3ZGt8N8iQ+dtjoEEVCPRVk4eak1SwUEQnPAYuFZuvkRiDwIXzYzeAg1VPhcHBZrAQR8URIpXg5OAz+v/M7aHSQ6qkg348DQ2IlQMaD4OjYuSpLsi2Ew/urZjgVEzqaV/eHwcGxU0YHqZ7K+VtUNiKjeH6blwPp2J0qi2VW4CMIX6QYVPh0wC8E6bEjRgfJthDy42akBbII2BwT0vAudHQQ96eH93zMsJgGBx+cOZAES/telngMIFw0tSRc8LzWvCD8k+k+TiDbFvJt/CUyA2zeBqbRVBsdZNtCEMaVpFRgVMaENJpao4NsWwj5q8I6XPB84YrkDqVSgok5sm0hrMsFZoP4jx98Sltw0GyLw5O1uUBsnATXlIPUSTDqMYB8uVa+mKFySciiB+kyOqjdFvJdcxNc8HzzjsJGWowOom0x+ZiDQuKaugxYGNC+TxqMjtBjgFZCrbUKrZWnfJ8UGB0iRz8GkE8SafBgFE/ICwXT8ddWJZiYC+heXOLi5nxzXPD8+Q2djW0aHeHdFvnHjS0SDO2RtlAOtlhlSbbFYmB83YDCWEThK1FtzLAVoyNCt4VwVtlQJZkBVs5Cv+nrGx0iF6HbYpY9IYTSHHAtfkJy6ISOVzY6onQvosA4NxVdr9d1rWUYRgkD/c6b5XpZVxRTSkJLMzQ0XtnoiNhtId/+9Cy75qqqChaAvnTdmm11jHK5HJuSIkWVL9DxWkZH5O7FXwD00cM7o+EpAI0Gdw0AN2w0ABhWqw8+L65reyUUOaYUmQxYjBAar1Zlo3db/AuMRo0+uG6DnoMIAKM+GPbbAFT/OM6RT0a16lNie0ZZNxcihMZN4SJKaLyK0UGzLZ4D9EegfQqc4bBRRTRgShq9Xh/0G73R0CfjejjsTddOzdPKypQEs2SS1472PbS6Ttl4aaMj9zZ6U+s/mIzqCDgPODiGPQctkEa/3wfta8SGT8Ho2plw0TtFf3CtUl1HKaTVcTsGmY0Kbb+2TMdL9k1Gqqdz/Bs97GmjDRwHtB30q4PWhNPr9UC7fdo/9TkY9qdkDKsPDZxhVLur67oNagqZjOLXaOvEp+PFjA76JZEV4BLS95MCrh4zuK77VFsao+u+nzv+XDscqDYap1XEh+F5lkJOGtpjdDJeyuiI2734C3FgW17nJxIa9TKGrvu/oS+LRgcVXdedseX0+iiXONfA8SPGtfQyJYeeR6onczo2X2Vjdy8KXyo6klZmcNWUJCTHymXT8GwcKG0/Pk5HjQZaUg0RVZxat05MooUv8T7Jpo8T4ncvyre48wBKBk1+Q8nU61rXquGVUx3ijAsa1WrDD49OmZA4iqQzJSIdm6yySGbFuw2A8R1t3mEL1n4aZDKmjCjlesknBOXVPiq6iIze0AGqVQ+kQ/se97MIwsYkWLxLIlOc+danaQOVUiWfgAjRu36ADHujB/DQw8IEAEsJyKSwcBb742zI6MCXRGJ/7wNh4HviUqdm6xG4mESIrndsFThtXGqxIHkY9VVLN1f+ZjOy0lj8RBswOpJcEjnw86f/gLwefduBydPrXg2LsF7vD5YhwwegevXndFTiZdDZR1rX6Eh8G2DmcUE+5j4dmmXFQuFx2gM9zumj9FF1u/VlRqNuT1boWKvKRrItgslYwxWXFL2DJEi1Ue1xaJPH9UCttZQ6ojg8wWwkNzrWuSRyOF5d6hFhdhVo1rs1UEW7GFA96jtcFViLwVEcJyQjcXDEuHQZRMaPpLa4VAI2IlKqGzUsxk6dycbWLZXnf0X7EXHjGsRGEqNDTFJPF8j4nZQMCL2OHwVSuYRyKYc0KdLrjQdgz+uK9js5GYkk2PF6l0QOv1HIgNQKA+cKXqp3XdBDG18UH2jXMg8O7ds6ZKAHO04PGVKrGzWhSPWOWkVJtN9o48ViT/Zvr07Gyy0TaLhqJ7L6MHULy44+h7Zz133XwGXl1ZfJCyZQvebqMdSH3sJrBXvKzrANOnX4+gmUW6+0ymOaztBbcaQYXivY9HCG2CBDS+X1SyvGi4mumLLU1HFdqfYmRVYrbEF0rRMc8kWsI2cpJIdAnEiHQ6TBRkNH/bkVOc6tu1FbfF7aw3peGF1muYaPpFDWaFTBf7ayUePW3MIv/Gy75AeVSqpaCqsvsG7h/Qre3oN/knCxmV6FNcyd6cNC/LzkPAEly4pw5KqXVDDsnaIk+is+FRvrYkls+01gllr4x056WgmLTt/fC5NiOI9i66ca0r+zSsXmbD8uoSE8+7l3XKsrEblQ5guk7IWZYv5SAeC/cbnY8LFrgqOCWTmRukAl6wrFmpmkpg2ssNiAZQ+R8b94VLzAzYOYVVY4m/X5SSVaRpA6tjYlw6tFUOk4ccRKGS/UqhHveFF+1NDS8JPFk8Ud8LCSwk8PBCBllTydvpi8G4eKF+ujjjU2R/5ahHxnWT8o3YBNCeTtUlgpkYwJj/jvFVJx8MzFakkQBhVoqGAx8k1PtQMWjFILPVrp1jycZ01MSUpaErhYzSryd02xlh4eiY3A43VK/8GMRYBVmem5XSk9zSpcjCqLtyfm0rNDQ4l0vLYCqVSr6X6KNWCK2pi46EaHcPb80jskqo2QjRrkdQWHmKTDdDW4cdFbHy+Xt/HQLBF0hNLtUrpTJmxYZZ/IlLU+YkRsil3erJk1wnYM5QLXo+stlDVcX7mlrimWi9kuPXugjhcsvqCiqvQkCqFh+7k3je3SXKJGenPSjLNyUgCNDq29D68SU1Jw6KSzkZ6LdMXiMOiKhalY9ecPaxJ6lqbStGV3Wv6fIgiubc2SSHT5Ruq4qk1OENLielHw3h9CqTRtedEew8Jii1dcQ6ts0LWsuqu2iJUUlqzJgpFQejEtFe39JUPivUl+TfO1LC7JhT3Idw3yXsS0gOEz1e2gxePV0C82KiOmz0W6L+xhhBgd+ZWrnJB2/waWDFxBoemqGhZZuKjOXA6NT/lVTm7Tl3zhhCmp05V83vi5pN+BS74Ym77+jcW5L9ANe6Hi7sT1b27TgwEmUcH7CeRpl7srgwG4kJER41ina9BQ1QkbKF3M7ZDCeFdGRnAhRke8YSK6XZsagJIy52KXholwmxwzM3dB5mTs2JgZjjqASE40gEjq1Cbb3MoJaSJmWgcQcdTRVJfU0VTB5g7at2MyYJOUO1M8mgqDaHSgCkvp8vK8QDYMHikwjVRTUz60jKMYHfKgRexfgQZhB48UWPFxQOAi9ePsuGSDDokCfbcHHXLUEZh8zBESBX7HR2BytOGol/GGo17u/HBUjmJ0yIMxdZbywgIpVsbB2WLbtkV8kAcqR6JjQkU2BipjrDVqW6GN2t49LqhD2OWbE7NSMFeLCIRmoWKe3MgZG8LOhYznv7m48sfz4/n8iAVNK/rj+a8u7rM4np+L8OKG+7vL8Y/vfLPJf/sxvry7z/CLG7gor/SQn97oke1XenAbfNnL7sgsGthrgBbBXhC1BPbqsCWwl8otgr1ucAmJXkS5I7ZFfLBXlC6Bvbx2Eey1xktgL7xeAnsV+iLCJVjmZBYN9Ksru21bxAfV6MimzKKBVGWzXk+DIYoB4+wz8Y7aRFitsntSTwPxzOjIlm0RH4tVdq/qaTBmRkcWbYv4EHO4ygrHe71CnpB7+yaztkV8iNzeZwsGBgYGBgYGBgYGBgYGBgYGBgYGBgaGLeH/b75bipWdNXoAAAAASUVORK5CYII=" class="tr_countryimg" >&nbsp;브라질</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/7/78/Flag_of_Chile.svg" class="tr_countryimg" >&nbsp;칠레</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/c/cf/Flag_of_Peru.svg" class="tr_countryimg" >&nbsp;페루</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/f/fe/Flag_of_Uruguay.svg" class="tr_countryimg" >&nbsp;우루과이</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Flag_of_Ecuador.svg/600px-Flag_of_Ecuador.svg.png" class="tr_countryimg" >&nbsp;에콰도르</td>
            </tr>
              <tr class='hj_tr2'>
                <td><a city_name='BuenosAires' class='city'>부에노스<br>아이레스</a></td><td><a city_name='SaoPaulo' class='city'>상파울루</a></td><td><a city_name='Santiago' class='city'>산티아고</a></td><td><a city_name='Cusco' class='city'>쿠스코</a></td><td><a city_name='Montevideo' class='city'>몬데비데오</a></td><td><a city_name='Quito' class='city'>키토</a></td>
            </tr>
              <tr class='hj_tr2'>
                <td></td> <td><a city_name='RiodeJaneiro' class='city'>리우데자네이루</a></td> <td></td> <td><a city_name='Lima' class='city'>리마</a></td> <td></td> <td></td>
            </tr>
        </table>
    </div>
    <div id='africa_box'>
        <table id='africa_table'>
            <tr class='hj_tr1'>
                <td colspan=5>아프리카</td>
            </tr> 
            <tr class='hj_tr3'>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/225px-Flag_of_Egypt.svg.png" class="tr_countryimg" >&nbsp;이집트</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Flag_of_South_Africa.svg/225px-Flag_of_South_Africa.svg.png" class="tr_countryimg" >&nbsp;남아프리카공화국</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Flag_of_Mauritius.svg/280px-Flag_of_Mauritius.svg.png" class="tr_countryimg" >&nbsp;모리셔스</td>
                <td><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Flag_of_Morocco.svg/300px-Flag_of_Morocco.svg.png" class="tr_countryimg" >&nbsp;모로코</td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Cairo' class='city'>카이로</a></td><td><a city_name='CapeTown' class='city'>케이프타운</a></td><td><a city_name='Mauritius' class='city'>모리셔스</a></td><td><a city_name='Marrakesh' class='city'>마라케시</a></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Luxor' class='city'>룩소르</a></td> <td></td> <td></td> <td><a city_name='Casablanca' class='city'>카사블랑카</a></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Aswan' class='city'>아스완</a></td> <td></td> <td></td> <td><a city_name='Fes' class='city'>페스</a></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Hurghada' class='city'>후르가다</a></td> <td></td> <td></td> <td></td>
            </tr>
            <tr class='hj_tr2'>
                <td><a city_name='Alexandria' class='city'>알렉산드리아</a></td> <td></td> <td></td> <td></td>
            </tr>
        </table>
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
   
   
   <div class="lastnarvar1">
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
<script type="text/javascript">

var cities_array= {
				"Seoul" : ['서울특별시', 'lat=37.5640455&lon=126.8340033', 'http://www.youtube.com/watch?v=fd97OrklarE', '달러', '1234' ],
				"Jeju" : ['제주도', 'lat=37.5640455&lon=126.8340033', 'https://www.youtube.com/watch?v=lR-T0xwTMSk',  '달러', '1234'  ],
				"Hongkong" : ['홍콩', 'lat=22.3524825&lon=113.8475045',  'https://www.0404.go.kr/dev/country_view.mofa?idx=377&hash=&chkvalue=no2&stext=&group_idx=1&alert_level=0', '달러' , '152.90' ],
				"Tokyo" : ['도쿄', 'lat=35.6684415&lon=139.6007845', 'https://www.0404.go.kr/dev/country_view.mofa?idx=183&hash=&chkvalue=no2&stext=&group_idx=1&alert_level=0',  '엔', '11.1963'  ],
				"Osaka" : ['오사카', 'lat=34.6777642&lon=135.4160247', 'https://www.0404.go.kr/dev/country_view.mofa?idx=183&hash=&chkvalue=no2&stext=&group_idx=1&alert_level=0', '엔', '11.1963' ],
				"Okinawa" : ['오키나와', 'lat=25.9533918&lon=124.8889625', 'https://www.0404.go.kr/dev/country_view.mofa?idx=183&hash=&chkvalue=no2&stext=&group_idx=1&alert_level=0', '엔', '11.1963' ], 
				"Fukuoka" : ['후쿠오카', 'lat=33.6501818&lon=130.1238887', 'https://www.0404.go.kr/dev/country_view.mofa?idx=183&hash=&chkvalue=no2&stext=&group_idx=1&alert_level=0', '엔', '11.1963' ], 
				"Taipei" : ['타이페이', 'lat=25.0174719&lon=121.366294', 'https://www.0404.go.kr/dev/country_view.mofa?idx=372&hash=&chkvalue=no2&stext=&group_idx=1&alert_level=0', '달러', '40.36' ],
				"Shanghai" : ['상하이', 'lat=31.2246325&lon=121.1965641', 'https://www.0404.go.kr/dev/country_view.mofa?idx=189&hash=&chkvalue=no2&stext=&group_idx=1&alert_level=0', '위안', '172.12' ],
				"Macau" : ['마카오', 'lat=22.1619078&lon=113.5351332', 'https://www.0404.go.kr/dev/country_view.mofa?idx=378&hash=&chkvalue=no2&stext=&group_idx=1&alert_level=0', '파타카', '148.95' ],  
				"Beijing" : ['베이징시', 'lat=39.9390731&lon=116.1172739', 'https://www.0404.go.kr/dev/country_view.mofa?idx=189&hash=&chkvalue=no2&stext=&group_idx=1&alert_level=0', '위안', '172.12' ],  
				"Bangkok" : ['방콕', 'lat=25.0174719&lon=121.366294', 'https://www.0404.go.kr/dev/country_view.mofa?idx=260&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '바트', '37.83' ],  
				"HuaHin" : ['후아힌', 'lat=12.591392&lon=99.9059303', 'https://www.0404.go.kr/dev/country_view.mofa?idx=260&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '바트', '37.83' ],
				"Phuket" : ['푸껫', 'lat=25.0174719&lon=121.366294', 'https://www.0404.go.kr/dev/country_view.mofa?idx=260&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '바트', '37.83' ],
				"Hanoi" : ['하노이', 'lat=21.0227788&lon=105.8194541', 'https://www.0404.go.kr/dev/country_view.mofa?idx=86&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '통', '0.05' ],
				 "Danang" : ['다낭', 'lat=16.0472484&lon=108.1716865', 'https://www.0404.go.kr/dev/country_view.mofa?idx=86&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '통', '0.05' ],
				 "Hochiminh" : ['호치민', 'lat=10.7553411&lon=106.415034', 'https://www.0404.go.kr/dev/country_view.mofa?idx=86&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '통', '0.05' ],
				 "NhaTrang" : ['나트랑', 'lat=12.259629&lon=109.17646', 'https://www.0404.go.kr/dev/country_view.mofa?idx=86&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '통', '0.05' ],
				 "Singapore" : ['싱가포르', 'lat=1.3143394&lon=103.7041639', 'https://www.0404.go.kr/dev/country_view.mofa?idx=134&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '달러', '866.93' ],
				 "Kotakinabalu" : ['코타키나발루', 'lat=5.9959858&lon=116.0955287', 'https://www.0404.go.kr/dev/country_view.mofa?idx=134&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '링깃', '284.35' ],
				 "Penang" : ['페낭', 'lat=5.3543299&lon=100.2229159', 'https://www.0404.go.kr/dev/country_view.mofa?idx=134&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '링깃', '284.35' ],
				 "Bali" : ['발리', 'lat=-8.4553172&lon=114.7913509', 'https://www.0404.go.kr/dev/country_view.mofa?idx=181&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '루피아', '0.08' ],
				 "Jakarta" : ['자카르타', 'lat=-6.2293867&lon=106.689432', 'https://www.0404.go.kr/dev/country_view.mofa?idx=181&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '루피아', '0.08' ],
				 "Yogyakarta" : ['족자카르타', 'lat=-7.8032076&lon=110.3573354', 'https://www.0404.go.kr/dev/country_view.mofa?idx=181&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '루피아', '0.08' ],
				 "Maldives" : ['몰디브', 'lat=3.1152069&lon=70.9963528', 'https://www.0404.go.kr/dev/country_view.mofa?idx=181&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '루피아', '0.08' ],
				 "Laos" : ['라오스', 'lat=18.2015647&lon=101.6153658', 'https://www.0404.go.kr/dev/country_view.mofa?idx=36', '킵', '0.13' ],
				 "Dubai" : ['두바이', 'lat=25.0755935&lon=55.0876629', 'https://www.0404.go.kr/dev/country_view.mofa?idx=135', '디르함', '322.88' ],
				 "Cebu" : ['세부', 'lat=10.3789257&lon=123.7762547', 'https://www.0404.go.kr/dev/country_view.mofa?idx=252', '페소', '24.45' ],
				 "Boracay" : ['보라카이', 'lat=11.9693246&lon=121.9097195', 'https://www.0404.go.kr/dev/country_view.mofa?idx=252', '페소', '24.45' ],  
				 "Manila" : ['마닐라', 'lat=14.5965788&lon=120.9445403', 'https://www.0404.go.kr/dev/country_view.mofa?idx=252', '페소', '24.45' ],
				 "London" : ['런던', 'lat=51.5287718&lon=-0.2416802', 'https://www.0404.go.kr/dev/country_view.mofa?idx=159&hash=&chkvalue=no2&stext=&group_idx=9&alert_level=0', '파운드', '1551.81' ],
				  "Edinburgh" : ['에든버러', 'lat=55.9412846&lon=-3.275378', 'https://www.0404.go.kr/dev/country_view.mofa?idx=159&hash=&chkvalue=no2&stext=&group_idx=9&alert_level=0', '파운드', '1551.81' ],
				  "Budapest" : ['부다페스트', 'lat=47.4811281&lon=18.9902187', 'https://www.0404.go.kr/dev/country_view.mofa?idx=254', '포린트', '3.97' ],
				  "Munich" : ['뮌헨', 'lat=48.1548256&lon=11.4017515', 'https://www.0404.go.kr/dev/country_view.mofa?idx=34', '유로', '1404.70' ],
				  "FrankfurtamMain" : ['프랑크푸르트', 'lat=50.1211277&lon=8.4964799', 'https://www.0404.go.kr/dev/country_view.mofa?idx=34', '유로', '1404.70' ],
				  "Nuremberg" : ['뉘른베르크', 'lat=49.436009&lon=10.9929533', 'https://www.0404.go.kr/dev/country_view.mofa?idx=34', '유로', '1404.70' ],
				  "Amsterdam" : ['암스테르담', 'lat=52.3545828&lon=4.7638769', 'https://www.0404.go.kr/dev/country_view.mofa?idx=21', '유로', '1404.70' ],
				  "Rotterdam" : ['로테르담', 'lat=51.927903&lon=4.3507446', 'https://www.0404.go.kr/dev/country_view.mofa?idx=21', '유로', '1404.70' ],
				  "Paris" : ['파리', 'lat=48.8588377&lon=2.2770199', 'https://www.0404.go.kr/dev/country_view.mofa?idx=248', '유로', '1404.70' ],
				  "Nice" : ['니스', 'lat=43.7031691&lon=7.1827769', 'https://www.0404.go.kr/dev/country_view.mofa?idx=248', '유로', '1404.70' ],
				  "Lyon" : ['리옹', 'lat=45.7579341&lon=4.7650809', 'https://www.0404.go.kr/dev/country_view.mofa?idx=248', '유로', '1404.70' ],
				  "Versailles" : ['베르사유', 'lat=48.8038949&lon=2.1016689', 'https://www.0404.go.kr/dev/country_view.mofa?idx=248', '유로', '1404.70' ],
				  "Moscow" : ['모스크바', 'lat=55.5815182&lon=36.8237514', 'https://www.0404.go.kr/dev/country_view.mofa?idx=39', '루블', '15.81' ],
				  "SaintPetersburg" : ['상트페테르부르크', 'lat=59.9399081&lon=29.5329116', 'https://www.0404.go.kr/dev/country_view.mofa?idx=39', '루블', '15.81' ],
				  "Vladivostok" : ['블라디보스토크', 'lat=43.1667516&lon=131.8130309', 'https://www.0404.go.kr/dev/country_view.mofa?idx=39', '루블', '15.81' ],
				  "Istanbul" : ['이스탄불', 'lat=41.193318&lon=28.3817312', 'https://www.0404.go.kr/dev/country_view.mofa?idx=260&hash=&chkvalue=no2&stext=&group_idx=5&alert_level=0', '리라', '160.97' ],
				  "Geneva" : ['제네바', 'lat=46.2050242&lon=6.1090691', 'https://www.0404.go.kr/dev/country_view.mofa?idx=127', '프랑', '1305.40' ],
				  "Zurich" : ['취리히', 'lat=47.3774337&lon=8.466675', 'https://www.0404.go.kr/dev/country_view.mofa?idx=127', '프랑', '1305.40' ],
				  "Luzern" : ['루체른', 'lat=47.0548081&lon=8.2472857', 'https://www.0404.go.kr/dev/country_view.mofa?idx=127', '프랑', '1305.40' ],
				  "Roma" : ['로마', 'lat=41.909986&lon=12.3959126', 'https://www.0404.go.kr/dev/country_view.mofa?idx=179', '유로', '1404.70' ],
				  "Venezia" : ['베네치아', 'lat=45.4042007&lon=12.1015555', 'https://www.0404.go.kr/dev/country_view.mofa?idx=179', '유로', '1404.70' ],
				  "Milano" : ['밀라노', 'lat=45.4627124&lon=9.1076921', 'https://www.0404.go.kr/dev/country_view.mofa?idx=179', '유로', '1404.70' ],
				  "Madrid" : ['마드리드', 'lat=40.4378698&lon=-3.8196221', 'https://www.0404.go.kr/dev/country_view.mofa?idx=128', '유로', '1404.70' ],
				  "Barcelona" : ['바르셀로나', 'lat=41.3948976&lon=2.0787283', 'https://www.0404.go.kr/dev/country_view.mofa?idx=128', '유로', '1404.70' ],
				  "Malta" : ['몰타', 'lat=35.9423686&lon=14.2382638', 'https://www.0404.go.kr/dev/country_view.mofa?idx=297', '유로', '1404.70' ],
				  "Copenhagen" : ['코펜하겐', 'lat=55.6713442&lon=12.5237847', 'https://www.0404.go.kr/dev/country_view.mofa?idx=31', '크로네', '188.51' ],
				  "Oslo" : ['오슬로', 'lat=59.8939529&lon=10.6450359', 'https://www.0404.go.kr/dev/country_view.mofa?idx=23', '크로네', '132.33' ],
				  "Warsaw" : ['바르샤바', 'lat=52.2330653&lon=20.9211126', 'https://www.0404.go.kr/dev/country_view.mofa?idx=246', '즈워티', '318.47' ],
				  "Krakow" : ['크라쿠프', 'lat=50.0468548&lon=19.9348337', 'https://www.0404.go.kr/dev/country_view.mofa?idx=246', '즈워티', '318.47' ],
				  "Helsinki" : ['헬싱키', 'lat=60.11021&lon=24.7385103', 'https://www.0404.go.kr/dev/country_view.mofa?idx=251', '유로', '1402.92' ],
				  "Rovaniemi" : ['로바니에미', 'lat=66.6670512&lon=24.9110104', 'https://www.0404.go.kr/dev/country_view.mofa?idx=251', '유로', '1402.92' ],
				  "Athens" : ['아테네', 'lat=37.9908997&lon=23.70332', 'https://www.0404.go.kr/dev/country_view.mofa?idx=11', '유로', '1404.70' ],
				  "Santorini" : ['산토리니', 'lat=36.4072716&lon=25.3505911', 'https://www.0404.go.kr/dev/country_view.mofa?idx=11', '유로', '1404.70' ],
				  "Stockholm" : ['스톡홀름', 'lat=59.326242&lon=17.8419719', 'https://www.0404.go.kr/dev/country_view.mofa?idx=126', '크로나', '135.52' ],
				  "Gent" : ['헨트', 'lat=51.082572&lon=3.5744034', 'https://www.0404.go.kr/dev/country_view.mofa?idx=87', '유로', '1404.70' ],
				  "Bruxelles" : ['브리쉘', 'lat=50.8387874&lon=4.2933656', 'https://www.0404.go.kr/dev/country_view.mofa?idx=87', '유로', '1404.70' ],
			     "Cairo" : ['카이로', 'lat=30.0595581&lon=31.223359', 'https://www.0404.go.kr/dev/country_view.mofa?idx=178', '파운드', '74.58' ],
			     "Luxor" : ['룩소르', 'lat=25.6950143&lon=32.6243616', 'https://www.0404.go.kr/dev/country_view.mofa?idx=178', '파운드', '74.58' ],
			     "Aswan" : ['아스완', 'lat=24.0923728&lon=32.8825537', 'https://www.0404.go.kr/dev/country_view.mofa?idx=178', '파운드', '74.58' ], 
			     "Hurghada" : ['후루가다', 'lat=27.19274&lon=33.6412817', 'https://www.0404.go.kr/dev/country_view.mofa?idx=178', '파운드', '74.58' ],
			     "Alexandria" : ['알랙산드리아', 'lat=30.0595581&lon=31.223359', 'https://www.0404.go.kr/dev/country_view.mofa?idx=178', '파운드', '74.58' ],
			     "CapeTown" : ['케이프타운', 'lat=-33.9131227&lon=18.0942518', 'https://www.0404.go.kr/dev/country_view.mofa?idx=20', '랜드', '70.09' ],
			     "Mauritius" : ['모르셔스', 'lat=-20.2004972&lon=56.5514933', 'https://www.0404.go.kr/dev/country_view.mofa?idx=61', '루피', '29.95' ],
			     "Marrakesh" : ['마라케시', 'lat=31.6347484&lon=-8.0780649', 'https://www.0404.go.kr/dev/country_view.mofa?idx=60', '디르함', '128.76' ],
			     "Casablanca" : ['카사블랑카', 'lat=33.5724107&lon=-7.6572043', 'https://www.0404.go.kr/dev/country_view.mofa?idx=178', '디르함', '128.76' ],
			     "Fes" : ['페스', 'lat=34.024029&lon=-5.0368457', 'https://www.0404.go.kr/dev/country_view.mofa?idx=60', '디르함', '128.76' ],
				  "Sydney" : ['시드니', 'lat=-33.8473567&lon=150.6517965', 'https://www.0404.go.kr/dev/country_view.mofa?idx=255', '달러', '853.84' ],
				  "Melbourne" : ['멜버룬', 'lat=-37.9716929&lon=144.7729589', 'https://www.0404.go.kr/dev/country_view.mofa?idx=255', '달러', '853.84' ],
				  "Brisbane" : ['브리즈번', 'lat=-27.3812533&lon=152.7130155', 'https://www.0404.go.kr/dev/country_view.mofa?idx=255', '달러', '853.84' ],
				  "GoldCoast" : ['골드코스트', 'lat=-27.9538474&lon=153.2292784', 'https://www.0404.go.kr/dev/country_view.mofa?idx=255', '달러', '853.84' ],
				  "Queenstown" : ['퀸즈타운', 'lat=-45.0063064&lon=168.6202645', 'https://www.0404.go.kr/dev/country_view.mofa?idx=25', '달러', '777.77' ],
				  "Auckland" : ['오클랜드', 'lat=-36.8601966&lon=174.6041194', 'https://www.0404.go.kr/dev/country_view.mofa?idx=25', '달러', '777.77' ],
				  "Wellington" : ['웰링턴', 'lat=-41.2489188&lon=174.7003023', 'https://www.0404.go.kr/dev/country_view.mofa?idx=25', '달러', '777.77' ],
				  "Paihia" : ['파이히아', 'lat=-35.2913294&lon=174.0648115', 'https://www.0404.go.kr/dev/country_view.mofa?idx=25', '달러', '777.77' ],
				  "Fiji" : ['피지', 'lat=-16.5369152&lon=177.2179629', 'https://www.0404.go.kr/dev/country_view.mofa?idx=249', '달러', '559.38' ],
			     "BuenosAires" : ['부에노스아이레스', 'lat=-34.6156624&lon=-58.50351', 'https://www.0404.go.kr/dev/country_view.mofa?idx=138', '페소', '16.08' ],
			     "SaoPaulo" : ['상파울루', 'lat=-23.6815303&lon=-46.8761746', 'https://www.0404.go.kr/dev/country_view.mofa?idx=104', '해알', '211.55' ], 
			     "RiodeJaneiro" : ['리우데자네이루', 'lat=-22.9137528&lon=-43.5864104', 'https://www.0404.go.kr/dev/country_view.mofa?idx=104', '해알', '211.55' ], 
			     "Santiago" : ['산티아고', 'lat=42.9192489&lon=-8.7219995', 'https://www.0404.go.kr/dev/country_view.mofa?idx=197', '해알', '211.55' ], 
			     "Cusco" : ['쿠스코', 'lat=-13.5299334&lon=-71.9743544', 'https://www.0404.go.kr/dev/country_view.mofa?idx=243', '솔', '331.43' ],
			     "Lima" : ['리마', 'lat=-12.0262674&lon=-77.1282083', 'https://www.0404.go.kr/dev/country_view.mofa?idx=243', '솔', '331.43' ],
			     "Montevideo" : ['몬데비데오', 'lat=-34.8209373&lon=-56.3064782', 'https://www.0404.go.kr/dev/country_view.mofa?idx=167', '페소', '27.71' ],
			     "Quito" : ['키토', 'lat=-0.1862504&lon=-78.5709678', 'https://www.0404.go.kr/dev/country_view.mofa?idx=155', '달러', '1185.88' ],
                 "Saipan" : ['사이판', 'lat=15.1933509&lon=145.6903464', 'https://www.0404.go.kr/dev/country_view.mofa?idx=69', '달러', '1187.00' ],
                "Guam" : ['괌', 'lat=13.4513253&lon=144.5086317', 'https://www.0404.go.kr/dev/country_view.mofa?idx=69', '달러', '1187.00' ],
                "NewYork" : ['뉴욕', 'lat=40.6976637&lon=-74.1197637', 'https://www.0404.go.kr/dev/country_view.mofa?idx=69', '달러', '1187.00' ], 
                "LA" : ['로스엔젤레스', 'lat=34.0207305&lon=-118.6919144', 'https://www.0404.go.kr/dev/country_view.mofa?idx=69', '달러', '1187.00' ],  
                "SanFrancisco" : ['샌프란시스코', 'lat=37.7577627&lon=-122.4726194', 'https://www.0404.go.kr/dev/country_view.mofa?idx=69', '달러', '1187.00' ],    
                "LasVegas" : ['라스베이거스', 'lat=36.1251958&lon=-115.3150831', 'https://www.0404.go.kr/dev/country_view.mofa?idx=69', '달러', '1187.00' ],    
                "Washington" : ['워싱턴dc', 'lat=38.8937091&lon=-77.0846157', 'https://www.0404.go.kr/dev/country_view.mofa?idx=69', '달러', '1187.00' ],    
                "Chicago" : ['시카고', 'lat=41.8339037&lon=-87.8720466', 'https://www.0404.go.kr/dev/country_view.mofa?idx=69', '달러', '1187.00' ],
                "Seattle" : ['시애틀', 'lat=47.6131746&lon=-122.4821465', 'https://www.0404.go.kr/dev/country_view.mofa?idx=69', '달러', '1187.00' ],
                "Boston" : ['보스톤', 'lat=42.3144556&lon=-71.0403236', 'https://www.0404.go.kr/dev/country_view.mofa?idx=69', '달러', '1187.00' ],
                "Hawaii" : ['하와이', 'lat=20.4589819&lon=-158.6261879', 'https://www.0404.go.kr/dev/country_view.mofa?idx=69', '달러', '1187.00' ],
                "Varadero" : ['바라데로', 'lat=23.1678609&lon=-81.2851414', 'https://www.0404.go.kr/dev/country_view.mofa?idx=327', '페소', '1188.86' ],
                "LaHabana" : ['하바나', 'lat=23.0510705&lon=-82.6138804', 'https://www.0404.go.kr/dev/country_view.mofa?idx=327', '페소', '1188.86'],
                "Vancouver" : ['밴쿠버', 'lat=49.2578262&lon=-123.1941154', 'https://www.0404.go.kr/dev/country_view.mofa?idx=204', '달러', '900.74' ],
                "Montreal" : ['몬트리올', 'lat=45.5581964&lon=-73.8707293', 'https://www.0404.go.kr/dev/country_view.mofa?idx=204', '달러', '900.74' ],
                "Banff" : ['밴프', 'lat=51.1773086&lon=-115.5854744', 'https://www.0404.go.kr/dev/country_view.mofa?idx=204', '달러', '900.74' ],
                "Toronto" : ['토론토', 'lat=43.71840346&lon=-79.5184851', 'https://www.0404.go.kr/dev/country_view.mofa?idx=204', '달러', '900.74' ], 
                "Quebec" : ['퀘백', 'lat=46.8565173&lon=-71.4821192', 'https://www.0404.go.kr/dev/country_view.mofa?idx=204', '달러', '900.74' ],  
                "Ottawa" : ['오타와', 'lat=45.2502958&lon=-76.0811261', 'https://www.0404.go.kr/dev/country_view.mofa?idx=204', '달러', '900.74' ],    
                "MexicoCity" : ['멕시코시티', 'lat=19.3910036&lon=-99.2840419', 'https://www.0404.go.kr/dev/country_view.mofa?idx=58', '페소', '54.07' ],
                "Cancun" : ['칸쿤', 'lat=21.1214886&lon=-86.9194454', 'https://www.0404.go.kr/dev/country_view.mofa?idx=58', '페소', '54.07' ],
                "GuanajuatoCity" : ['과나후아토', 'lat=21.025147&lon=-101.2754327', 'https://www.0404.go.kr/dev/country_view.mofa?idx=58', '페소', '54.07' ] 
          }
    $(document).ready(function(){
    	$('.lastnarvar1').hide();
        // CSSMap;
        $("#map-continents").CSSMap({
            "size": 1280,
            "onClick":function(e){
                land=e[0]['innerText'];
                land=land.toLowerCase();
                land=land.replace(' ','-')+"_box";
                $('div[id$=_box]').hide();
                $('#'+land).show();
                $('.lastnarvar').hide();
                $('.lastnarvar1').show();
            }
        });
        // END OF THE CSSMap;
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