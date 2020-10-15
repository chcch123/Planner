<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>일정 만들기</title>
</head>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Kufam:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/765d58648e.js" crossorigin="anonymous"></script>
<style>
    html,
    body {
        height: 100%;
        margin: 0;
        padding: 0;
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
        margin-top: 20px;
        font-weight: bold;
		font-family: 'Poor Story';
    }
    .hj_m2>a{
        color: black;
        text-decoration: none;
        
    }
    #map {
        height: 100%;
        width: 100%;
        position: relative; 
        z-index: 2;

    }
    .hj_box1 {
        display: none;
    }
    #hj_box{
        height: 260px;
        width: 300px;
        background-color: black;
        position: absolute; 
        top: 160px; 
        left:200px;       
        display: none; 
        z-index: 0;
        
    }
    #hj_box2{
        height: 50px;
        width: 300px;
        text-align:center;
        background-color: #1a7ad9;
        font-weight: bold;
        font-size:25px;
        font-family: 'Poor Story';        
        color:white;
        padding-top: 15px;
        
    }
    #hj_box3{
        height: 120px;
        width: 270px;
        background-color:white;
        text-align: center;
        padding: 15px;
        border-bottom: 1px solid rgb(184, 182, 182);
    }
    #hj_box4{
        height: 30px;
        background-color:rgb(199, 197, 197);
        text-align: center;
        padding: 5px ;
        font-weight: bold;
        font-size:22px;
        font-family: 'Poor Story';        
    }
    #hj_box5{
        height: 60px;
        width: 270px;
        background-color:white;
        text-align: center;
        padding: 15px;
    }
    #hj_box6{
        height: 30px;
        background-color:rgb(64, 166, 224);
        text-align: center;
        padding: 10px ;
    }
    #plus{
        background-color: transparent;
        border: 0;
        outline: 0;
        color:white;
        font-weight: bold;
        font-size:18px;
        font-family: 'Poor Story';        
    }
    #hj_box11{
        position: absolute; 
        /* top: 100px; 
        left:200px;    */
        top: 50%;
        left: 50%;
        margin: -100px 0 0 -150px;
        height:300px ;
        /* !important; */
        width: 400px;
        z-index: 1;
        background-color: white;
        cursor:move;
    }
    .hj_box11{
        display: none;
        background-color: white;
        font-weight: bold;
        font-family: 'Poor Story';        
    	font-size:18px;
    }
    #hj_box13{
        border-top: 1px solid rgb(160, 158, 158);
        text-align: center;
    }
    #hj_box14{
        border-bottom: 1px solid rgb(160, 158, 158);
        
    }
    #del{
        height:30px;
        width: 40px;
        /* background-color:rgb(160, 158, 158); */
        border: 0;
        outline: 0;
        font-weight: bold;
    }
    
    #hj_del{
        float: right;
    }
    #del2{
        float: right;
        background-color:white;
        border: 0;
        outline: 0;
        font-weight: bold;
        font-family: 'Poor Story';  
        font-size:18px;
    }
    #ok{
        float:right;
        height: 50px;
        width: 100px;
        background-color: rgb(64, 166, 224);
        font-weight: bold;
        color:white;
        border: 0;
        outline: 0;
        margin-right: 20px;
        font-family: 'Poor Story';   
        font-size: 17px;     
    }
    #hj_dlm{
        display: none;
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: #000;
        opacity: .5;
        filter: alpha(opacity=50);
        padding: 0;
    }
    #mypage{
        float: right;
        margin-top: 10px;
    	margin-right: 10px;
    }
    #mypage>li {
       font-size: 15px;
        font-weight: bold;
        text-align: center;
    }
    #log-out{
    	float: right;
        margin-top: 5px;
    }
    #log-out>li {
        font-size: 15px;
        font-weight: bold;   
    }
    #log_id>li {
        float: right;
        margin:40px 60px 0 0;
        font-size: 30px;
        font-weight: bold;
    }
    #profile>li{
    	float: right;
        margin:15px 10px 0 0;
    }
    #info_box{
       text-align: center;
    }
    #goto_city , #close{
       background-color:white;
       font-weight: bold;
	   font-family: 'Poor Story';
	   font-size:15px
    }
       /*마지막 바*/
   .lastnarvar{
     position:relative;
     width:100%;
     height:300px;
     top:-15px;
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
   #ma{
   font-family: 'Poor Story';
   font-size:20px;
   }


       
    
</style>
<body>
    <div class="narvar"></div>
        <div align="center" >
            <ul id="hj_menu">
                <li class=hj_m1><a href="http://52.14.162.119:8080/planner/"><div class="mainlogo"><img src="https://cdn.pixabay.com/photo/2018/02/04/01/54/paper-planes-3128885_960_720.png" width="50px" height="50px" ></div>HUMAN<br>&nbsp;&nbsp;&nbsp;&nbsp;PLAN&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                <li class=hj_m2>&nbsp;&nbsp;&nbsp;&nbsp;1. 나라 선택&nbsp;→ &nbsp;</li>
                <li class=hj_m2>2. 도시 선택&nbsp;→ &nbsp;</li>
                <li class=hj_m2>3. 상세 일정 만들기 &nbsp;&nbsp;&nbsp;&nbsp;</li>
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

        
        <div id="map"></div>
        <div id="hj_box" class="hj_box1">
            <div id="hj_box2" class="hj_box1">여행 도시</div>
            <div id="hj_box3" class="hj_box1">
                <div id="hj_box4" class="hj_box1"></div>
                <div id="hj_del"><input type="button" value="X" id=del></div>
            </div>
            <div id="hj_box5" class="hj_box1">
                <div id="hj_box6" class="hj_box1"><input type='button' value='상세 일정 만들기' id=plus place_lat="" place_lng="" place_city=""></div>
            </div>
        </div>
        <form action='submit_myplan' method='GET'  id=frm> 
        <div id=hj_box11 class="hj_box11">
            <br>
            <div id=hj_box12 class="hj_box11">&nbsp;&nbsp;출발일 선택&nbsp;<input type="button" value="X" id=del2>&nbsp;&nbsp;&nbsp;</div><br>
            <div id=hj_box13 class="hj_box11">
                <br>
                여행 제목&nbsp;&nbsp;&nbsp;&nbsp;<input type='text' id=txt size="30" name="my_name"><br><br>
            </div>
            <div id=hj_box14 class="hj_box11">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;출발일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" id=dat name="my_start"><br><br>
            </div>
            <br>
            <div id=hj_box15><input type="hidden" id=hj_lat name="my_lat" value=""><input type="hidden" id=hj_lng name="my_lng" value=""><input type="hidden" id=hj_city name="my_city" value=""></div>`
            <div id="hj_ok2" class="hj_box11"><input type="button" value="완료" id=ok>&nbsp;&nbsp;&nbsp;</div>
            <br>
        </div>
        </form>
        <div id="hj_dlm"></div>
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
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<script 
   src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCzOsiCkyGHjl255jTM7NbkEOh3q-u9sws&callback=initialize&libraries=places&v=weekly"
    defer
></script>
<script language="javascript">
    var geocoder,map,service;
    var basemarker=[];
    var basemarker2=[];
    var countrylist = [
        ["Canada",["Ottawa"],4, '56.130366,-106.346771',"캐나다"],
        ["USA",["New York","Los Angeles"],5.1, '37.09024,-95.712891',"미국"],
        ["Mexico",["Mexico City"],5.5, '23.634501,-102.552784',"멕시코"],
        ["Cuba",["La Habana"],7.5, '21.839744, -78.936515',"쿠바"],
        ["Piruw",["Lima"],6, '-9.121555, -76.862649',"페루"], 
        ["Brasil",["Brasilia"],5, '-14.235004,-51.92528',"브라질"], 
        ["Argentina",["Buenos Aires"],5, '-35.491344, -65.813536',"아르헨티나"], 
        ["Chile",["Santiago"],5, '-35.675147,-71.542969',"칠레"],
        ["Uruguay",["Montevideo"],6.5, '-32.535756, -56.456634',"우루과이"],
        ["UK",["London"],6, '55.378051,-3.435973',"영국"],
        ["France",["Paris"],6.2, '46.227638,2.213749',"프랑스"],
        ["Schweiz",["Luzern"],7, '46.817512, 7.974516',"스위스"],
        ["Belgium",["Brussels"],7.5, '50.833439, 4.646994',"벨기에"],
        ["Nederland",["Amsterdam"],7.5, '52.225399, 5.750543',"네덜란드"],
        ["Deutschland",["Berlin"],6.2, '51.158887, 10.428801',"독일"],
        ["Danmark",["Kobenhavn"],6.8, '55.484158, 9.796085',"덴마크"],
        ["Spain",["Madrid"],6, '40.46366700000001,-3.74922',"스페인"],
        ["Hungary",["Budapest"],7, '47.213952, 19.283651',"헝가리"],
        ["Italy",["Rome"],6.7, '41.87194,12.56738',"이탈리아"],
        ["Greece",["Athens"],7, '39.748063, 21.985611',"그리스"],
        ["Turkey",["İstanbul"],6.7, '38.779169, 35.279998',"터키"],
        ["Morocco",["Marrakesh"],6, '31.983243, -6.062020',"모로코"],
        ["Egypt",["Cairo"],6, '26.590553, 30.188133',"이집트"],
        ["SouthAfrica",["CapeTown"],6, '-30.559482,22.937506',"남아공"],
        ["Mauritius",["Port Louis"],6, '-20.275248, 57.559515',"모리셔스"],
        ["Arab Emirates",["Abu Dhabi"],7, '23.531524, 54.317804',"아랍에미레이트"],
        ["Russia",["Moscow"],4, '61.52401,105.318756',"러시아"],
        ["China",["Beijing","Shanghai"],4.9, '35.86166000000001,104.195397',"중국"],
        ["India",["New Delhi"],5, '20.593684,78.96288',"인도"],
        ["Maldives",["Malé"],7, '-0.691729, 73.153249',"몰디브"],
        ["Thailand",["Bangkok"],7, '15.870032,100.992541',"태국"],
        ["Vietnam",["Ha Noi"],6, '14.058324,108.277199',"베트남"],
        ["Malaysia",["Kota Kinabalu"],4, '4.084122, 102.132574',"말레이시아"],
        ["Singapore",["Singapore"],11, '1.352083,103.819836',"싱가포르"],
        ["Indonesia",["Bali"],5.8, '-0.789275,113.921327',"인도네시아"],
        ["Australia",["Sydney"],5, '-25.274398,133.775136',"호주"],
        ["Newzealand",["Auckland"],5,'-36.847385,174.765735',"뉴질랜드"],
        ["Guam",["Guam"],11,'13.444304,144.793731',"괌"],
        ["Saipan",["Saipan"],12.2,'15.186890, 145.747338',"사이판"],
        ["Hawaii",["Oahu"],8,'21.452385, -157.985836',"하와이"],
        ["Philipinas",["Maynila","Cebu"],6, '12.879721,121.774017',"필리핀"],
        ["Hongkong",["Hongkong"],11, '22.3193039,114.1693611',"홍콩"],
        ["Taiwan",["Taipei"],7, '23.69781,120.960515',"대만"],
        ["Japan",["Tokyo","Kyoto"],5.7, '36.204824,138.252924',"일본"],
        ["SouthKorea",["Seoul","Busan","Jeju"],6, '35.90775699999999,127.766922',"한국"]
        ]
    function initialize(){
        geocoder = new google.maps.Geocoder();
        var mainmap = new google.maps.LatLng('16.289046', '30.615490');// 지도에서 가운데로 위치할 위도와 경도
        var mapOptions = {
            center: mainmap, // 지도에서 가운데로 위치할 위도와 경도(변수)
            zoom: 3, // 지도 zoom단계
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
    map = new google.maps.Map($('#map')[0], mapOptions);
    service = new google.maps.places.PlacesService(map);
    
    var i=0;
    function recurse_country() {
        if(i==countrylist.length) return;
        setTimeout(function(){
            var c_address = countrylist[i][3];
            country_marker(c_address,i++);
           recurse_country();
           if(i==countrylist.length) return;
        },50)
        console.log(i)
        console.log(countrylist.length)
    }

    recurse_country();
    

    }

    function  country_marker(c_address,i) {
        

        console.log(c_address);
            
                 var iconImage = {
                    url: "http://www.googlemapsmarkers.com/v1/000000/",

                 
                }; 
                // map.panTo(detail.geometry.location);
                var latlng=c_address.split(',')
                var l_object = new google.maps.LatLng(parseFloat(latlng[0]),parseFloat(latlng[1]));
                const marker = new google.maps.Marker({
                map:map,
                //icon: iconImage,
                position: l_object,
                label: {
                	fontFamily: 'Poor Story',
                	fontSize:'20px',
                	fontWeight:'bold',
                    text:countrylist[i][4]
                    //color: '#9a9a9a' 
                },
                });
                // console.log(detail.geometry.location.lat()+','+detail.geometry.location.lng())
                basemarker.push(marker);
                google.maps.event.addListener(marker,'click', function() {
                    map.setCenter(this.getPosition());
                    map.setZoom(countrylist[i][2]);
                    clearmarker(null);
                    goto_country(i);
                })
    };

    function goto_country(i) {
/*         service.getDetails({placeId:place_id}, function(detail){
            map.setCenter(detail.geometry.location);
            map.setZoom(countrylist[i][2])
        }); */
        for (var a = 0; a < countrylist[i][1].length; a++) {
            var ct_address = countrylist[i][1][a];
            city_marker(ct_address)
        }
    };

    function  city_marker(ct_address) {
/*        var iconImage = {
                url: "/planner/resources/ij_resources/plan.svg",
                size: new google.maps.Size(71, 71),
                origin: new google.maps.Point(0, 0),
                anchor: new google.maps.Point(17, 34),
                scaledSize: new google.maps.Size(25, 25)
            }; */
       
        geocoder.geocode({ 'address': ct_address }, function(results, status) {
            console.log(results[0].place_id)
            service.getDetails({placeId:results[0].place_id}, function(detail){
                const ct_marker = new google.maps.Marker({
                map: map,
                //icon: iconImage,
                
                position: detail.geometry.location
                }); 
                basemarker2.push(ct_marker) 
            var img_src;
            (detail.photos==undefined) ? img_src='0' : img_src=(detail.photos[0].getUrl({"maxWidth": 150, "maxHeight": 100}));
            infowindow = new google.maps.InfoWindow()
            infowindow.setContent('<table><tr><td><div id="ma">'+detail.name+'</div></td></tr><tr><td><div><img src='+img_src+'></div></td></tr>'+
                                  '<tr><td id=info_box><input type="hidden" class="latlng" lat='+detail.geometry.location.lat()+' lng='+detail.geometry.location.lng()+' value='+results[0].place_id+'>'+
                                  '<button id="goto_city">GO</button>&emsp;<button id="close">CLOSE</button></td></tr></table>');
            infowindow.open(map,ct_marker); 
            });
        });
    };

    function goto_city(place_id) {
        service.getDetails({placeId:place_id}, function(detail){
            $("#hj_box4").html(detail.name);  
        });
        // infowindow.close(); 
        // clearmarker2();

        $('.hj_box1').css({zIndex:4}).show();
        $('#hj_del').fadeIn();
    };

    function clearmarker(){
       for(k=0;k<basemarker.length;k++){
           basemarker[k].setMap(null);
        }
    }
    function clearmarker2(){
       for(k=0;k<basemarker2.length;k++){
           basemarker2[k].setMap(null);
        }
    }
</script>
<script>
    $(document).ready(function () {
    })
    .on('click', '#goto_city', function () {
        $('#plus').attr('place_lat',$(this).prev('input').attr('lat'))
        $('#plus').attr('place_lng',$(this).prev('input').attr('lng'))
        goto_city($(this).prev('input').val());
        $('#plus').attr('place_city',$(this).closest('tbody').children('tr:eq(0)').children('td:eq(0)').text())
        console.log($(this).closest('tbody').children('tr:eq(0)').children('td:eq(0)').text())
        
    })
    .on('click', '#close', function () {
        $(this).closest('div').remove();
    })
    .on('click','#hj_del',function(){
        $("#hj_box4,#hj_del").fadeOut();
    })
    .on('click','#plus',function(){
        $('#hj_lat').val($(this).attr('place_lat'));
        $('#hj_lng').val($(this).attr('place_lng'));
        $('#hj_city').val($(this).attr('place_city'));
        $('.hj_box11').css({zIndex:6}).fadeIn();
        $("#hj_dlm").css({zIndex:5}).fadeIn();
        $('.hj_box1').css({zIndex:4}).fadeOut();
    })
    .on('click','#del2',function(){
        $('.hj_box11').css({zIndex:6}).fadeOut();
        $("#hj_dlm").css({zIndex:5}).fadeOut();
    })
    .on('click','#ok',function(){
       
        $("#frm").submit();
    })
</script>
</html>