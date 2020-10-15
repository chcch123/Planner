<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>인기 여행일정 및 후기2</title>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<script src="https://kit.fontawesome.com/765d58648e.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Kufam:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<script
src="https://maps.googleapis.com/maps/api/js??v=3.exp&amp;region=KR&amp;language=ko&amp;key=AIzaSyCzOsiCkyGHjl255jTM7NbkEOh3q-u9sws&callback=initMap&libraries=places&v=weekly"
defer
></script>
</head>
<style>
  body{
   margin:0;
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
     .tr_mainimg_var{
    width:100%;
    height:8px;
    background-color:#1a7ad9;
    margin-top:3%;
    }
    
    .tr_mainimg_undervar{
    width:100%;
    height:8px;
    background-color:#1a7ad9;
    }
       
     #pho{
        margin-left:auto;
        height:400px;
		position:relative;
        z-index:-2;
        background-color:#ccdae7;
      }
    #pho2{
       height:300px;
         width: 90%;
      }
    #pho2> img{
         height:90%;
       	 width: 80%;
         position:absolute;
         padding-top:20px;
         padding-bottom:20px;
          z-index:-1;
         padding-left:10%;
    }

      #info{
       position:absolute; 
         z-index:1;
         background-color: rgba( 255, 255, 255, 0.3 );
         top:20px;
         left:30px;
         font-weight: bold;
         color: black;
         font-size:28px;
         text-align:center;
         font-family: 'Poor Story';
         
      }
      
      /*info 안에  div*/
      .tr_date{
      position: relative; 
      top:78%;
      left:20%;
      font-weight: bold;
      font-size:25px;
      font-family:'Poor Story';
      }
      
      .tr_city{
       position: absolute; 
      top:40%;
      left:46%;
      font-weight: bold;
      font-size:40px;
       font-family: 'Kufam';
      }
      
      .tr_id{
      position:relative; 
      margin-top:-1.8%;
      left:30%;
      font-weight: bold;
      font-size:25px;
      font-family:'Poor Story';
      }
       /*plan과 map테이블*/
      .tr_plan_table_main{
      background-color:#e0e4e7;
      width:100%;
      height:100%;
      margin-top:-2.2%;
      
      
      }
      .tr_plan_table_smain{
      margin-left:-6%;}
      
    
      .tr_plan_txt{
      font-size:35px;
      padding:10px;
      background-color:rgb(32, 51, 65);
      color:#fff;
      text-align:center;
      width:400px;
      margin-bottom:4%;
      font-family:'Poor Story';
      font-weight: bold;
      }
      
      
      
      #map_box{
        vertical-align: top;
         width: 400px;
        padding-left:8%;
        position:relative;
        z-index:1px;
       }        
    #map{
         height:500px;
        width:500px;
        float: right;
          z-index:3;
          position:absolute;
          right:900px;
        top:-65px;
    }
      /*더 많은 여행 일정을 볼려면*/
    #fa-location1{
    position:absolute;
   top:83%;
   left:70%;
    
    }
    .map_txt{
    position:absolute;
   top:76%;
   left:75%;
   font-size:30px;
   font-family:'Poor Story';
    
    }
    
   .tr_button5{
   position:absolute;
   top:100%;
   left:68%;
     height: 60px;
        width: 400px;
       text-align:center;
        background-color: rgb(32, 51, 65);
        color:white;
        font-weight: bold;
        font-size: 25px;
        font-family:'Poor Story';
              z-index:5;
    }
    
    #plan_table{
        height:500px;
        width: 80%;
        width:100%;
        padding-top:5%;
        padding-bottom:10%;
        margin-left:13%;
        font-family:'Poor Story';
    }
    .days2{
        width: 200px;
    }
    /* #plan_table *{
        border:1px solid black;
    } */
    #plan{
        width: 500px;
        height: 100%;
    }
    #planlist{
        border-bottom: 1px solid rgb(110, 110, 110);
        font-size: 25px;
        color:rgb(32, 51, 65);
        font-family: 'Poor Story';
    }
    #day_div{
        background-color: rgb(32, 51, 65);
        color:white;
        font-size: 32px;
        font-weight: bold;
        font-family: 'Poor Story';
    }
       /*댓글창*/
.review_background{
background-color:#e0e4e7;
margin-top:0%;
padding-top:1%;
padding-bottom:2%;
}
    
    .tr_comment{
    margin-left:15%;
    margin-top:4%;
    font-size:25px;
    font-family:'Poor Story';
    font-weight:bold;
    }
    
    #tr_review_text{
   font-size:35px;
  background-color:rgb(32, 51, 65);
   color:#fff;
   width:500px;
   height:50px;
   margin-left:24.5%;
   margin-bottom:5%;
   padding-left:5%;
    font-family:'Poor Story';
   
    
    }
    #review_div{
       /* border: 1px solid black; */
       height:800px;
        width: 100%;
        overflow: scroll;
        overflow-x:hidden;
        overflow-y:hidden;
        margin:30px 0 0 100px;
        display: none;
        position:relative;
        margin-left:10%;
       
      
    }
    #review_table{
        border: 3px solid rgb(32, 51, 65);
        height:100px;
        width: 1000px;
        /*margin:200px 0 0 200px;*/
        margin-left:14%;

    }
   #review_box1{
      height:100px;
      width: 100px;
      border-right: 3px double rgb(32, 51, 65);
        text-align:center;
   }
    #review_box2{
        height:100px;
      width: 1000px;
    }
    #review_box3{
        text-align:center;
        
    }
    #text_box{
        height: 100px;
        width:100%;
        border:0;
    }
    
    #my_id{
    font-weight:bold;
    }
    
    
    /*글자수 제한*/
    .data_count{
    margin-left:62%;
    }
   #review_button{
   position:absolute;
 
   top:66%;
   left:60%;
  
      height: 60px;
        width: 100px;
       text-align:center;
        background-color: rgb(32, 51, 65);
        color:white;
        font-weight: bold;
        font-size: 25px;
         font-family:'Poor Story';
    }
    #review_view{
        font-size: 15px;
        font-weight: bold;
        /* border: 0;
        outline: 0; */
        color:white; 
        background-color: transparent;
    }
    .reviews{
        border-top: 3px solid  rgb(110, 110, 110);
        width:1000px;
        margin-top:20px;
        font-size:28px;
        
      
    }
    #review{
        margin-left: 250px;
          padding-left:20px;
          font-size:20px;
        
    }
    #review_toggle{
        height:35px;
        width: 120px;
        font-weight: bold;
        font-size: 25px;
        text-align:center;
        margin: 50px 0 10px 200px;
        background-color: rgb(32, 51, 65);
        color:white;
            font-family:'Poor Story';
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
    <br><br>

    <div class="tr_mainimg_var"></div>
    <div id=pho>
       <div id=pho2>
        <img src="${city_img}">
       </div>
        <input type=hidden id=my_id name="my_id" value="${my_id}">
        <div id=info></div>
    </div>
    <div class="tr_mainimg_undervar"></div>
    <br><br>
    
     <div class="tr_plan_table_main"> 
    <div class="tr_plan_table_smain">
    
    <table id=plan_table align="center">
        <tr>
            <td>
            <div class="tr_plan_txt">여기 여행 어때요?</div>
                <table id=plan >
                </table>
            </td>
            <td id="map_box">
                <div id="map"></div>
            </td>
        </tr>
    </table>
    </div>
    <div id="map_txt"><a href="hj_yplan"><button class="tr_button5">더많은 여행 정보를 보려면 </button></a></div>
    <div id="map_txt1"><i class="fas fa-location-arrow fa-3x" id="fa-location1"></i><p class="map_txt">지도를 이용해서<br>여행하고 싶은 곳을<br>찾아보세요!</p></div>
    
    </div>
    <div class="tr_table_var"></div>
    

<div class="review_background">
    <div id=review_toggle><img src="/planner/resources/review.png" width="30px" height="30px" align=center>&nbsp;댓글
    <input type="button" id=review_view value="▽">
    </div>
    <div id='review_div'>
    <div id='tr_review_text'>여러분의 리뷰를 작성해보아요</div>
      <input type=hidden id=my_id name="my_id" value="${my_id}" >
      <input type=hidden id=t_id name="t_id" value="${t_id}">
      <input type=hidden id=m_id name="m_id" value="${id}">
      <div id='review'></div>

       <div class="tr_comment"><i class="fas fa-check fa-lg"></i>댓글달기</div>
     <table id='review_table'>
           <tr>
   
               <!--td id='review_box1'>리뷰</td--><td id='review_box2'><textarea id=text_box name="y_review"  onKeyUp="checkByte(this.form)"></textarea></td><td id='review_box3'></td>
               <p class="data_count"><span id="messagebyte">0</span>/1000 byte</p>

               
           </tr>
            
       </table>
       
        <input type="button" id='review_button' value='완료'>
       
    </div>
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

<script>
    var map;
    function initMap() {
        const center = {lat:36,lng:180}
        map = new google.maps.Map($('#map')[0], {
        center: center,
        zoom: 14
        });
    }
    
</script>
<script language="javascript">
    console.log($('#my_id').val())
    var planmarker=[];
    var patharray=[];
    var line=[];
    var planpath;
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

        
    $(document).ready(function () {
       show_review();
        $.ajax({
            method:'GET',
                url:'ij_show_day_plan',
                datatype:'text',
                data:{plan_id:$('#my_id').val()},
                success:function(str){
                    
                    var json_plan=JSON.parse(str)
                    $('#info').html(json_plan[0]['my_start']+'<br>'+json_plan[0]['my_city']+'<br>'+json_plan[0]['my_name'])
                    var json_place=JSON.parse(json_plan[0]['my_place'])
                    console.log(json_place)
                    $.each(json_place,function(key,val){
                        console.log(val)
                        $('#plan').append('<tr class="days" id='+key+'><td class="days2"><div id=day_div>&ensp;DAY'+key+'</div></td></tr>')
                        $.each(val,function(ndx,obj){
                            $('.days[id="'+key+'"').children('td').append('<input type="hidden" class="plan_info" name="'+obj[0]+'" position="'+ obj[1]+'">')
                            $('#plan').append('<tr><td id=planlist>&ensp;'+obj[0]+'</td></tr>')
                        })    
                    })
                }
        })
        setTimeout(function(){$('.days[id="1"]').click()},500);

    })
    .on('click', '.days', function () {
        for(i=0;i<planmarker.length;i++) planmarker[i].setMap(null);
        planmarker=[];
        patharray=[];
        removeLine();
        var plan_bounds = new google.maps.LatLngBounds();
        $(this).children('td').children('input').each(function(){
            var latlng=$(this).attr('position').split(',')
            var l_object = new google.maps.LatLng(parseFloat(latlng[0]),parseFloat(latlng[1]));
            patharray.push(l_object);
            plan_bounds.extend(l_object);
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
                    position: l_object       
                });
            planmarker.push(plan_marker);
        })
        addLine();
        map.fitBounds(plan_bounds);
    })
    .on('click','#review_button',function(){
        $.ajax({
             method:'POST',
             url:'review_submit',
             datatype:'text',
             data:{t_id:$('#t_id').val(),m_id:$('#m_id').val(),my_id:$('#my_id').val(),y_review:$('#text_box').val()}
         })
         $('#text_box').val('');
        show_review();
    })
    .on('click','#review_view',function(){
        if($("#review_div").is(":visible")){
            $("#review_div").css("display", "none"); 
            $("#review_view").val("▽");
        } else{ 
            $("#review_div").css("display", "block"); 
            $("#review_view").val("△");
            } 
    })
</script>  
<script>
function show_review(){
   
    $.ajax({
         method:'GET',
         url:'review_list',
         datatype:'text',
         data:{my_id:$('#my_id').val()},
         success:function(str){
              
            var json_review=JSON.parse(str)
         console.log(json_review)
            $.each(json_review,function(key,val){
                console.log(val)
                $('#review').append('<div class="reviews"id='+key+'>'+val['m_id']+'</div><div>'+val['y_review']+'</div><div>'+val['y_date']+'</div>')              
            })  
        }
   })
   $('#review').empty();  
   
}
</script>

</html>