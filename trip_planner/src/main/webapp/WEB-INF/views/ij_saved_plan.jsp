<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<% request.setCharacterEncoding("UTF-8"); %>


<!DOCTYPE html>
<html>
    <head>
    <title>일정만들기2</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <script
    src="https://maps.googleapis.com/maps/api/js??v=3.exp&amp;region=KR&amp;language=ko&amp;key=AIzaSyCzOsiCkyGHjl255jTM7NbkEOh3q-u9sws&callback=initMap&libraries=places&v=weekly"
    defer
    ></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Kufam:wght@500&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
    <style type="text/css">
    table,td,tr{
        padding: 0;
    }

    #main_table {
        /* height: 800px;
        width: 1800px; */
        height: 900px;
        width: 100%;

    }
    #days_td {
        height: 800px;
        width: 400px;
        
    }
    #map_td {
        /* height: 800px;
        width: 1400px; */
        height: 100%;
        width: 100%;
    }
    #days_table {
        /* height: 800px;
        width: 400px; */
        height: 100%;
        width: 100%;
		font-family: 'Poor Story';
		font-size:20px;
    }
    #search_table {
        /* height: 800px;
        width: 250px; */
        height: 100%;
        width: 100%;
        text-align: center;
        color:rgb(32, 51, 65);
    }
    /* #search_table td{
        border-bottom: 1px solid black;

    } */
    #days_div{
        overflow: scroll;
        /* height: 800px;
        width: 100%; */
        height: 100%;
        width: 100%;
        background-color: rgb(32, 51, 65);
        overflow:hidden;
        text-align: center;
        color:white;
        /* border-right: 1px solid rgb(160, 158, 158); */
    }
    /* #days_div::-webkit-scrollbar{
        display: block;
    } */
    #plan_div{
        overflow: scroll;
        /* height: 800px;
        width: 100%; */
        height: 100%;
        width: 100%;
        background-color: white;
        overflow-x:hidden;
        text-align: center;
        color:rgb(32, 51, 65);
        /* border-right: 1px solid rgb(160, 158, 158); */
    }
    #list_div{
        overflow: scroll;
        height: 800px;
        width: 300px;
        /* height: 100%;
        width: 100%; */
        background-color:white;
        overflow-x:hidden;
        color:rgb(32, 51, 65);
    }
    .days td{
        border-bottom: 1px solid rgb(160, 158, 158);
    }
    #days_board {
        text-align: center;
        width: 100px;
        font-size:30px;
        font-weight:bold;
    }
    #plan_board {   
        width: 240px;
        text-align: center;
        background-color: rgb(32, 51, 65);
        color:white;
    }
    #plan_board td{
        border-bottom: 1px solid rgb(160, 158, 158);
        font-size:30px;
    }
    #plan_day{
        font-size:25px;
        font-weight:bold;
    }
    #search_board{
        font-size:25px;
        font-weight:bold;
        text-align: center;
        color:rgb(32, 51, 65);
        font-size:30px;
    }
    #search_board2{
        border-bottom: 1px solid rgb(160, 158, 158);
        background-color: rgb(32, 51, 65);
        color:white;
    }
    #type_check{
        text-align: center; 
        font-size:20px;
        height: 40px;
    }
    #info_div{
        background-color: white;
        display: none;
        position: absolute;
        overflow: scroll;
        height: 930px;
        width: 310px;
        overflow-x:hidden;
    }
    #review_text_div{
        background-color: rgb(160, 158, 158);
        display: none;
        word-break: break-all;
        width: 180px;
    }
    #info_table{
        width: 270px;
    }
    #list_board {
        width: 100%;
        text-align: center; 
    }
    #list_board td{
        border-bottom: 1px solid rgb(32, 51, 65);
    }
    #search_tr td{
        border-bottom: 1px solid rgb(32, 51, 65);
        font-size:17px;
    }
    #map {
        height: 100%;
    }

    html,body {
        height: 100%;
        margin: 0;
        padding: 0;
    }
    html::-webkit-scrollbar{
        display: none;
    }

    #description {
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
    }

    #infowindow-content .title {
        font-weight: bold;
    }

    #infowindow-content {
        display: none;
    }

    #map #infowindow-content {
        display: inline;
    }
    #more {
        display: none;
    }
    .thumbnail {
        height: 50px;
        width: 50px;
    }
    #list_img {
        height: 250px;
        width: 270px;
    }
    #detail_div {
        word-break: break-all;
        width:180px;
    }
    #list_name_div {
        word-break: break-all;
        width:100px;
        font-size:18px;
    }
    #close_review{        
    	color:white;
        font-weight: bold;
        background-color: rgb(32, 51, 65);
        font-family: 'Poor Story';
        font-size:18px;}
    /* 상단바 */
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
        font-size: 28px;
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
    #update_div{
        float: left;
        height: 50px;
        width: 60px;
        margin: 0 0 0 20px;
    }
    #update{
        border: 0;
        outline: 0;
        background-color: rgb(32, 51, 65);
        height: 40px;
        width: 80px;
        font-weight: bold;
        color:white;
        font-size:20px;
		font-family: 'Poor Story';
    }
    #day_plus{
        color:white;
        font-weight: bold;
        background-color:  rgb(32, 51, 65);
        font-family: 'Poor Story';
        font-size:20px;
    }
    #day_delete{
        color:white;
        font-weight: bold;
        background-color: transparent;
        font-size:20px;
        font-family: 'Poor Story';
    }
    #list_delete,#list_info{
        color:white;
        font-weight: bold;
        background-color:  rgb(32, 51, 65);
		font-family: 'Poor Story';
		font-size:18px;
    }
    #list_add{
        background-color: rgb(32, 51, 65);
        color:white;
        font-weight: bold;
        font-family: 'Poor Story';
        font-size:18px;
    }
    #info_close{
        color:white;
        font-weight: bold;
        background-color: rgb(32, 51, 65);
        font-size:20px;
        float: right;
        font-family: 'Poor Story';
    }
    #info_table {
        width: 100%;
        font-size:20px;
    }
    #show_review{
        color:white;
        font-weight: bold;
        background-color: rgb(32, 51, 65);
        font-family: 'Poor Story';
        font-size:18px;
    }
    #plan_add,#info,#plan_delete,#close{
        background-color:white;
        font-family: 'Poor Story';
        font-size:15px;
        font-weight: bold;
        margin:0 2px 0 2px;
        
    }
    #plan_delete,#close{

    }
       /*마지막 바*/
   .lastnarvar{
     position:relative;
     width:100%;
     height:300px;
     top:-17px;
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
     top:;
     margin-left:1380px;
     color:white;
     font-family: 'Do Hyeon', sans-serif;
     font-size:20px;
   
   }   



    </style>
    <script>
        var save_object={};
        var day_plans_detail=[];
        var day_plans=[];
        var infowindow;
        var map;
        var patharray=[];
        var line=[];
        var prev_infowindow;
        var planmarker=[];
        var basemarker=[];
        var service;
        var search_markers=[];
      var selectmarker=[];
        var place_types=['tourist_attraction', 'restaurant', 'department_store'];

        function initMap() {
            console.log($('#center').attr('lat'))
            console.log($('#center').attr('lng'))
        const center = {lat:eval($('#center').attr('lat')),lng:eval($('#center').attr('lng'))}
        map = new google.maps.Map($('#map')[0], {
            center: center,
        });
        nearby(center)
        center_change()
        auto_complete()
        }

        function center_change(){
        map.addListener('dragend', function(){
            setTimeout(function(){
                for (i=0; i<basemarker.length; i++) basemarker[i].setMap(null);
                basemarker=[];
                for (i=0; i<search_markers.length; i++) search_markers[i].setMap(null);
                search_markers=[];
                $('#list_board').empty();
                const newcenter=map.getCenter();
                nearby(newcenter)
                setTimeout(function(){
                    $('#more').click();
                  // setTimeout(function(){
                  //   $('#more').click();
                  // },1000)
                },1000)
            },500)
        })
        }

        function auto_complete() {
            var autocomplete = new google.maps.places.Autocomplete($('#search_box')[0]);
            autocomplete.bindTo('bounds', map);
            autocomplete.setOptions({strictBounds:true})
            autocomplete.addListener('place_changed', function() {
            var search_place = autocomplete.getPlace();
            if(!search_place.geometry) {}
            else { 
                map.setCenter(search_place.geometry.location)
                for (i=0; i<search_markers.length; i++) search_markers[i].setMap(null);
                search_markers=[];
                for (i=0; i<basemarker.length; i++) basemarker[i].setMap(null);
                basemarker=[];
                const search_marker = new google.maps.Marker({
                    map: map,
                    position: search_place.geometry.location
                })
                search_markers.push(search_marker)
                var img_src;
                (!search_place.photos) ? img_src='/planner/resources/ij_resources/0.png' : img_src=(search_place.photos[0].getUrl({"maxWidth": 500, "maxHeight": 500}));
                var search_infowindow = new google.maps.InfoWindow();
                search_infowindow.setContent('<table><tr><td>'+search_place.name+'</td></tr><tr><td><div><img class="thumbnail" src='+img_src+'></div></td></tr>'+
                                             '<tr><td><input type="hidden" class="latlng" value="'+search_place.geometry.location.lat()+','+search_place.geometry.location.lng()+'">'+
                                             '<button id="plan_add" name='+search_place.name+' img='+img_src+' place_id='+search_place.place_id+'>ADD</button><button id="info" place_id='+search_place.place_id+'>INFO</button></td></tr></table>');
                search_infowindow.open(map,search_marker);
            }
            $('#search_box').val('');
            })
        }

        function nearby(center) {
            var type= place_types[eval($('#locate_type').val())];
            console.log(type)
            service = new google.maps.places.PlacesService(map);
            let getNextPage;
            const moreButton = $('#more')[0];              
            moreButton.onclick = function() {
                moreButton.disabled = false;
                if (getNextPage) {
                    getNextPage();
                }
            }; 
            service.nearbySearch(
            {
                location: center,
                radius: 3000,
                rankby: 'prominence',
                type: type
            },
                (results, status, pagination) => {
                    if (status !== "OK") return;
                    createMarkers(results, map);
                    moreButton.disabled = !pagination.hasNextPage;
                    getNextPage = pagination.hasNextPage && function() {
                        pagination.nextPage();
                    };
                }
            );
        }

        function createMarkers(places, map) {
            $('#info_close').click();
            console.log(places)
            for (let i = 0, place; (place = places[i]); i++) {
                const image = {
                    url: place.icon,
                    size: new google.maps.Size(71, 71),
                    origin: new google.maps.Point(0, 0),
                    anchor: new google.maps.Point(17, 34),
                    scaledSize: new google.maps.Size(25, 25)
                };
                const marker = new google.maps.Marker({
                    map:map,
                    icon: image,
                    title: place.name,
                    position: place.geometry.location
                });
            basemarker.push(marker)
            google.maps.event.addListener(marker, "click", function() {
                $('#info_close').click();
                $('#list_board button[name="'+place.name+'"]').focus();
                $('#list_board button[name="'+place.name+'"]').closest('tr').css('background-color','yellow');
                setTimeout(function(){ $('#list_board button[name="'+place.name+'"]').closest('tr').css('background-color','transparent')},300)
                var img_src;
                (!place.photos) ? img_src='/planner/resources/ij_resources/0.png' : img_src=(place.photos[0].getUrl({"maxWidth": 500, "maxHeight": 500}));
                var point=place.geometry.location;
                infowindow = new google.maps.InfoWindow()
                if( prev_infowindow ) prev_infowindow.close();
                prev_infowindow = infowindow;
                infowindow.setContent('<table><tr><td>'+place.name+'</td></tr><tr><td><div><img class="thumbnail" src='+img_src+'></div></td></tr>'+
                                      '<tr><td>RATING:'+place.rating+'</td></tr>'+
                                      '<tr><td><input type="hidden" class="latlng" value="'+point.lat()+','+point.lng()+'">'+
                                      '<button id="plan_add" name='+place.name+' img="'+img_src+'"  place_id='+place.place_id+'>ADD</button><button id="info" place_id='+place.place_id+'>INFO</button></td></tr></table>');
                infowindow.open(map,marker);    
            });       
            var img;
            (!place.photos) ? img='/planner/resources/ij_resources/0.png' : img=(place.photos[0].getUrl({"maxWidth": 500, "maxHeight": 500}));
            createList(img,place.name,place.geometry.location.lat(),place.geometry.location.lng(),place.place_id);
            }
        }

        function get_details(place_id) {
            $('#info_table').empty();
            let name, adrress, phone, opening_hours, now_open, image='/planner/resources/ij_resources/0.png', rating, types, website, reviews;
            let name_array=["장소이름", "주소", "전화번호", "현재영업", "평점", "홈페이지"];
            let detail_array=[];
            service.getDetails({placeId:place_id}, function(detail){
                console.log(detail)
                if(detail.name) name=detail.name; 
                if(detail.formatted_address) adrress=detail.formatted_address; 
                if(detail.formatted_phone_number) phone=detail.formatted_phone_number; 
                if(detail.opening_hours) {
                    opening_hours=detail.opening_hours['weekday_text'];
                    now_open=detail.opening_hours.isOpen();
                }
                if(detail.photos) image=(detail.photos[0].getUrl({"maxWidth": 500, "maxHeight": 500}));
                if(detail.price_level) price_level=detail.price_level; 
                if(detail.rating) rating=detail.rating; 
                if(detail.reviews) reviews=detail.reviews; 
                if(detail.types) types=detail.types; 
                if(detail.website) website=detail.website; 
                detail_array.push(name, adrress, phone, now_open, rating, website);
                $('#info_div').slideDown(300);
                $('#info_table').append('<tr><td colspan="2"><button id="info_close">X</button></td></tr>')
                $('#info_table').append('<tr><td colspan="2"><div><img id="list_img" src="'+image+'"></div></td></tr>')
                $.each(detail_array,function(i,v){
                    if(!v) $('#info_table').append('<tr><td><div>'+name_array[i]+'</div></td><td>정보없음</td></tr>')
                    else $('#info_table').append('<tr><td><div>'+name_array[i]+'</div></td><td><div id="detail_div">'+v+'</div></td></tr>');
                })
                if(!opening_hours) $('#info_table').append('<tr><td><div>영업시간</div></td><td>정보없음</td></tr>')
                else {
                    $('#info_table').append('<tr><td rowspan="'+(opening_hours.length+1)+'"><div>영업시간</div></td><td></td></tr>')
                    $.each(opening_hours,function(i,v){
                        $('#info_table').append('<tr><td><div id="detail_div">'+v+'</div></td></tr>');
                    })
                }
                if(!types) $('#info_table').append('<tr><td><div>장소타입</div></td><td>정보없음</td></tr>')
                else {
                    $('#info_table').append('<tr><td rowspan="'+(types.length+1)+'"><div>장소타입</div></td></tr>')
                    $.each(types,function(i,v){
                        $('#info_table').append('<tr><td><div id="detail_div">'+v+'</div></td></tr>');
                    })
                }
                if(!reviews) $('#info_table').append('<tr><td><div>리뷰</div></td><td>정보없음</td></tr>')
                else {
                    $('#info_table').append('<tr><td rowspan="'+(reviews.length*4+1)+'"><div>리뷰</div></td></tr>')
                    $.each(reviews,function(i,v){
                        $('#info_table').append('<tr><td><div id="detail_div">작성자: '+v['author_name']+'</div></td></tr>');
                        $('#info_table').append('<tr><td><div id="detail_div">평점: '+v['rating']+'</div></td></tr>');
                        $('#info_table').append('<tr><td><div id="detail_div"><button id="show_review">리뷰보기</button></div></td></tr>');
                        $('#info_table').append('<tr><td><div id="review_text_div">'+v['text']+'<button id="close_review">닫기</button></div></td></tr>');
                    })
                }
                $('#info_table').append('<tr><td colspan="2"><button id="info_close">X</button></td></tr>')
            });
        }

        function createList(img_src,name,lat,lng,place_id) {
            $('#list_board').append('<tr class="search_list_tr"><td><div><img class="thumbnail" src='+img_src+'></div></td><td><div id="list_name_div">'+name+'</div></td>'+
                                    '<td><input type="hidden" class="latlng" value="'+lat+','+lng+'">'+
                                    '<button id="list_add" name="'+name+'" img="'+img_src+'" place_id="'+place_id+'">ADD</button></td><td><button id="list_info" place_id="'+place_id+'">INFO</button></td></tr>')
         }

        function addLine() {
            const lineSymbol = {path: google.maps.SymbolPath.FORWARD_CLOSED_ARROW};
            planpath = new google.maps.Polyline({
                path: patharray,
                icons: [{icon: lineSymbol, offset: "100%"}],
                strokePattern: 'Dot',
                strokeColor: '#000',
                strokeWeight: 2,
                strokeOpacity: 0.8
            });
            line.push(planpath);
            planpath.setMap(map);
        }
        function removeLine() {
            for (i=0; i<line.length; i++) line[i].setMap(null);
            planpath=[]
        }

    </script>
    </head>
    <body>
    <div class="narvar"></div>
    <div align="center" >
        <ul id="hj_menu">
            <li class=hj_m1><a href="http://52.14.162.119:8080/planner/"><div class="mainlogo"><img src="https://cdn.pixabay.com/photo/2018/02/04/01/54/paper-planes-3128885_960_720.png" width="50px" height="50px" ></div>HUMAN<br>&nbsp;&nbsp;&nbsp;&nbsp;PLAN&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li class=hj_m2>&nbsp;&nbsp;&nbsp;&nbsp;<span id="my_name"></span>&nbsp;&nbsp;&nbsp;&nbsp;</li>
            <li class=hj_m2>&nbsp;&nbsp;&nbsp;&nbsp;<span id="my_start"></span>&nbsp;&nbsp;&nbsp;&nbsp;</li>
            <li class=hj_m2>&nbsp;&nbsp;&nbsp;&nbsp;<span id="my_city"></span>&nbsp;&nbsp;&nbsp;&nbsp;</li>
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
            <div id="update_div">
                <li class=hj_m2><button id=update>수정</button></li>
            </div>
        </ul>
    </div>   
    <br><br><br>

    <div id="right-panel">
        <input type="hidden" id="locate_type" value=0>
        <input type="hidden" id="center" lat=' 37.413294' lng='127.269311'>
        <button id="more"></button>
    </div>
    <table id="main_table" >
        <tr>
            <td id="days_td">
                <form action="ij_update_my_plan" method="POST" id="update_form">
                <input type="hidden" id="plan_id" value="${plan_id }" name="plan_id">
                <input type="hidden" id="planner_name" value="${t_id }" name="t_id">
                <input type="hidden" id="plans_name" value="" name="my_name">
                <input type="hidden" id="plans_start" value="" name="my_start">
                <input type="hidden" id="plans_object" value="" name="my_place">
                <input type="hidden" id="plans_city" value="" name="my_city">
                </form>
                <table id="days_table" >
                    <tr>
                        <td >
                            <div id="days_div">
                            <table id="days_board" >
                            </table>
                            </div>
                        </td>
                        <td>
                            <div id="plan_div">
                            <table id="plan_board" >
                            </table>
                            </div>
                        </td>
                        <td>
                            <div id="info_div">
                            <table id="info_table" >
                            </table>
                            </div>
                            <table id="search_table" >
                                <tr id="search_board">
                                    <td colspan="4" id="search_board2">SEARCH & LIST</td>
                                </tr>
                                <tr id="type_check">
                                    <td val=0>관광지</td>
                                    <td val=1>식당</td>
                                    <td val=2>쇼핑</td>
                                    <td val=0>호텔</td>
                                </tr>
                                <tr id="search_tr">
                                    <td>지도 내 검색<br><br></td> <td colspan="3"><input type="text" id="search_box"><br><br></td>
                                </tr>
                                <tr id="shop_list">
                                    <td colspan="4">
                                        <div id="list_div">
                                        <table id="list_board" >
                                        </table>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
            <td id="map_td">
                <div id="map"></div>
            </td>
        </tr>
    </table>
</body>
<script>
    $(document).ready(function () {
        $.ajax({
            method:'GET',
             url:'ij_show_day_plan',
             datatype:'text',
             data:{plan_id:$('#plan_id').val()},
             success:function(str){
                var json_plan=JSON.parse(str)
                $('#plans_start').val(json_plan[0]['my_start'])
                $('#plans_name').val(json_plan[0]['my_name'])
                $('#plans_city').val(json_plan[0]['my_city'])
                 $('#my_city').text(json_plan[0]['my_city'])
                 $('#my_name').text(json_plan[0]['my_name'])
                 $('#my_start').text(json_plan[0]['my_start'])
                 var json_place=JSON.parse(json_plan[0]['my_place'])
                 $.each(json_place,function(key,val){
                     console.log(val)
                     $('#days_board').append('<tr class="days" id='+key+'><td><div>DAY'+key+'</div></td></tr>')
                     $.each(val,function(ndx,obj){
                     $('.days[id="'+key+'"').children('td').append('<input type="hidden" class="plan_list" name="'+obj[0]+'" position="'+ obj[1]+'" img_src="'+obj[2]+'" place_id='+obj[3]+'>')
                     })       
                 })
                 $('#days_board').append('<tr><td><button id="day_plus">DAY+</button></td></tr>')
                 setTimeout(function(){
                    $('.days[id="1"]').click()
                     $('#type_check td:eq(0)').click();
                   },500);

             }
         })

    })
    .on('click', '#update', function () {
        $('.days').each(function(){
            if($(this).children('td').children('input').length==0) save_object[$(this).attr('id')]=[]
            else {
                $(this).children('td').children('input').each(function(){
                    day_plans_detail.push($(this).attr('name'),$(this).attr('position'),$(this).attr('img_src'),$(this).attr('place_id'));
                    day_plans.push(day_plans_detail);
                    day_plans_detail=[];
                })
                save_object[$(this).attr('id')]=day_plans;
                day_plans=[];
            }
        })
        var json_save=JSON.stringify(save_object);
        console.log(save_object)
        console.log(json_save)
        $('#plans_object').val(json_save);
        $('#update_form').submit();
    })
    .on('click', '#day_plus', function () {
        var before_day=$(this).parent('td').parent('tr').prev('tr').attr('id');
        $(this).parent('td').parent('tr').before('<tr class="days" id='+(eval(before_day)+1)+'><td><div>DAY'+(eval(before_day)+1)+'</div></td></tr>')
        $('.days[id='+(eval(before_day)+1)+']>td').click();
    })
    .on('click', '.days', function () {
        $('#info_close').click();
        if( prev_infowindow ) {
            prev_infowindow.close();
        }
        var plan_day=$(this).attr('id');
        $('#plan_board').empty()
        $('#plan_board').append('<tr id="plan_day" day='+$(this).attr('id')+'><td colspan="2">DAY'+$(this).attr('id')+' PLAN</td><td><button id="day_delete">X</button></td><tr>')
        patharray=[];
        removeLine();
        for(i=0; i<search_markers.length; i++) search_markers[i].setMap(null);
        search_markers=[];
        for(i=0;i<planmarker.length;i++) planmarker[i].setMap(null);
        planmarker=[];
        var plan_bounds = new google.maps.LatLngBounds();
        if($(this).children('td').children('input').length>0) {
            $(this).children('td').children('input').each(function(){
                $('#plan_board').append('<tr class="day_plan_tr"><td><input type="hidden" class="latlng" value="'+$(this).attr('position')+'"><div><img class="thumbnail" src="'+$(this).attr('img_src')+'"></td><td>'+$(this).attr('name')+'</td><td><button id="list_delete" name="'+$(this).attr('name')+'">DELETE</button><button id="list_info" place_id='+$(this).attr('place_id')+'>INFO</button></td><tr>')
                var plan_window_img=$(this).attr('img_src');
                var plan_window_name=$(this).attr('name');
                var latlng=$(this).attr('position').split(',')
                var l_object = new google.maps.LatLng(parseFloat(latlng[0]),parseFloat(latlng[1]));
                patharray.push(l_object);
                var iconImage = {
                    url: "/planner/resources/ij_resources/plan.svg",
                    size: new google.maps.Size(71, 71),
                    origin: new google.maps.Point(0, 0),
                    anchor: new google.maps.Point(17, 34),
                    scaledSize: new google.maps.Size(25, 25)
                };
                const plan_marker=new google.maps.Marker({
                    map: map,
                    animation: google.maps.Animation.DROP,
                    icon: iconImage,
                    label: plan_window_name,
                    position: l_object       
                });
                planmarker.push(plan_marker);
                google.maps.event.addListener(plan_marker, "click", function() {
                    planwindow = new google.maps.InfoWindow()
                    planwindow.setContent('<table><tr><td>'+plan_window_name+'</td></tr><tr><td><div><img class="thumbnail" src="'+plan_window_img+'"></div></td></tr>'+
                                          '<tr><td><button id="plan_delete" name="'+plan_window_name+'">DELETE</button><button id="close">CLOSE</button></td></tr></table>');
                    planwindow.open(map,plan_marker);    
                });
                plan_bounds.extend(l_object);
            })
        }
        if (planmarker.length>1) map.fitBounds(plan_bounds);
        addLine();
    })
    .on('click', '#plan_add,#list_add', function () {
        var info_position=$(this).prev('input').val();
        var info_image=$(this).attr('img');
        var info_name=$(this).attr('name');
        $('.days[id='+$('#plan_day').attr('day')+']>td').append('<input type="hidden" class="plan_list" name="'+info_name+'" position="'+ info_position+'" img_src="'+info_image+'" place_id='+$(this).attr('place_id')+'>');
        $('.days[id='+$('#plan_day').attr('day')+']>td').click();
    })
    .on('click', '#plan_delete, #list_delete', function () {
        var delete_other=$('.days[id='+$('#plan_day').attr('day')+']>td').children('input[name="'+$(this).attr('name')+'"]')
        if(delete_other.length>1) for(var del=1; del<delete_other.length; del++) delete_other[del].remove();
        else delete_other.remove();
        $('.days[id='+$('#plan_day').attr('day')+']>td').click();
    })
    .on('click', '#day_delete', function () {
        if(eval($(this).closest('tr').attr('day')) != '1') {
            var day_delete_confirm = confirm('DAY'+$(this).closest('tr').attr('day')+' 계획을 삭제하시겠습니까?')
            if(day_delete_confirm) {
                $('.days[id='+$(this).closest('tr').attr('day')+']').remove();
                var this_day=eval($(this).closest('tr').attr('day'));
                $('#days_board .days').each(function(){
                    if(eval($(this).attr('id'))>this_day) {
                    console.log($(this).attr('id'))
                        $(this).attr('id',eval($(this).attr('id'))-1);
                        $(this).children('td').children('div').html('DAY'+$(this).attr('id'))
                    }
                })
                $('.days[id="1"]').click()
            }
        }
        else alert('DAY1 삭제불가')
    })
    .on('click', '#close', function () {
        $(this).closest('div').closest('div').fadeOut();
    })
    .on('click', '#info_close', function () {
        $('#info_div').slideUp(300);
        $('#info_table').empty();
    })
    .on('click', '#list_info, #info', function () {
        get_details($(this).attr('place_id'));
    })
    .on('click', '#show_review', function () {
        $(this).closest('tr').next('tr').children('td').children('div').slideDown();
    })
    .on('click', '#close_review', function () {
        $(this).closest('tr').children('td').children('div').slideUp();
    })
    .on('click', '#type_check td', function () {
        if($('#type_check td[check=checked]').length==0){}
        else{
            $('#type_check td[check=checked]').css('font-weight','normal');
            $('#type_check td[check=checked]').attr('check','unchecked');
        }
        $(this).attr('check','checked');
        $(this).css('font-weight','bold');
        $('#locate_type').val($('#type_check td[check=checked]').attr('val'));
        for (i=0; i<search_markers.length; i++) search_markers[i].setMap(null);
        search_markers=[];
        for (i=0; i<basemarker.length; i++) basemarker[i].setMap(null);
        basemarker=[];
        $('#list_board').empty();
        const newcenter=map.getCenter();
        if(newcenter)nearby(newcenter)
        else nearby({lat:eval($('#center').attr('lat')),lng:eval($('#center').attr('lng'))})
    })
    .on('mouseenter','.day_plan_tr, .search_list_tr', function () {
        $(this).css('background-color','rgb(162, 162, 202)');
        var latlng=$(this).children('td').children('input').val().split(',')
        console.log($(this).children('td').children('input').val())
        var l_object = new google.maps.LatLng(parseFloat(latlng[0]),parseFloat(latlng[1]));
        var iconImage = {
              url: "/planner/resources/ij_resources/selector.png",
              size: new google.maps.Size(100, 100),
              origin: new google.maps.Point(0, 0),
              anchor: new google.maps.Point(25, 51),
              scaledSize: new google.maps.Size(40, 40)
          };
        const select_marker=new google.maps.Marker({
          map: map,
          animation: google.maps.Animation.BOUNCE,
          icon: iconImage,
          position: l_object       
        });
        selectmarker.push(select_marker);
    })
    .on('mouseleave','.day_plan_tr, .search_list_tr', function () { 
        for(i=0; i<selectmarker.length; i++) selectmarker[i].setMap(null);
        $(this).css('background-color','transparent');
    })
    .on('mouseenter','.days, #type_check td', function () {
        $(this).css('background-color','rgb(162, 162, 202)');
    })
    .on('mouseleave','.days, #type_check td', function () { 
        $(this).css('background-color','transparent');
    })

</script>
</html>