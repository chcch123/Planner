<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Kufam:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/765d58648e.js" crossorigin="anonymous"></script>
</head>
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
    table, tr, td,div,img{
    	border-spacing: 0;
    }
   #log{
		font-size:40px;
   		font-family: 'Kufam', cursive;
   }
   #log_table{
   		width:600px;
   		height:200px;
   		border:1px solid rgb(160, 158, 158);
   		font-family: 'Poor Story';
   		border-radius:5px;
   		}
   	#log_table>tr{
   		height:20px;
   	}	
   	#log_main{
   		background-color:rgb(32, 51, 65);
   		color:white;
   		font-weight: bold;
   		font-size:27px;
   	}
   	#hj_log_id{
   		font-weight: bold;
   		color:rgb(32, 51, 65);
   		font-size:22px;
   		padding:0 0 0 30px;
   		border-bottom: 1px solid rgb(160, 158, 158);
   	}
   	#hj_log_pw{
   		font-weight: bold;
   		color:rgb(32, 51, 65);
   		font-size:22px;
   		padding:0 0 0 30px;
   	}
   	#hj_log_txt{
   		border-bottom: 1px solid rgb(160, 158, 158);
   	}
   	#register,#login,#reset{
   		height: 40px;
        width: 80px;
    	text-align:center;
        background-color: rgb(32, 51, 65);
        color:white;
        font-size:18px ;
        font-family: 'Poor Story';  
        font-weight: bold; 
        margin-bottom:20px;
        border-radius:5px;
	}
   @import url(http://fonts.googleapis.com/earlyaccess/nanumpenscript.css);
</style>
<body>
    <div class="narvar"></div>
   <div align="center" >
        <ul id="hj_menu">
          
            <li class=hj_m1><a href="http://52.14.162.119:8080/planner/"><div class="mainlogo"><img src="https://cdn.pixabay.com/photo/2018/02/04/01/54/paper-planes-3128885_960_720.png" width="50px" height="50px" ></div>HUMAN<br>&nbsp;&nbsp;&nbsp;&nbsp;PLAN&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li class=hj_m2><a href="hj_plan"><h3 class="hj_menu">일정 만들기</h3></a></li>
            <li class=hj_m2><a href="tripInfo " class="hj_menu1"><h3>여행정보</h3></a></li>
            <li class=hj_m2><a href="hj_yplan" class="hj_menu2"><h3>인기 여행일정 및 후기</h3></a></li>
            <li class=hj_m2><a href="qnaList"><h3>게시판</h3></a></li>
            <div id=log-in>
            	<li class=hj_m2><a href="hj_log"><img src="/planner/resources/lock.png" width="28px" height="23px"><br>로그인</a></li>
   			</div>
            <div id=mypage>
                <li class=hj_m2><a href="hj_log"><img src="/planner/resources/my.PNG" width="30px" height="25px"><br>마이페이지</a></li>
            </div>
        </ul>

    </div>
    <br><br><br><br>
    <h1 align="center" id=log>HUMAN<br>&nbsp;&nbsp;&nbsp;&nbsp;PLAN&nbsp;&nbsp;&nbsp;&nbsp;</h1>
   <table id=log_table align="center">
       <tr align="center">
           <td colspan="2" id=log_main>로그인</td>
       </tr>
   <form id="kakao_login"  action="ij_kakao_login" method="post">
        <input type="hidden"  id="icon" name="icon" /><input type="hidden"  id="nickname" name="nickname" /> <input type="hidden"  id="kakaoid" name="kakaoid" />
   </form>
   <form id="login_form"  action="home_log" method="post">
       <tr>
           <td id=hj_log_id>아이디:</td>
           <td id=hj_log_txt>
                 <input type="text" style="width:170px"id="id" name="id" maxlength="12" /> 
           </td>
       </tr>
       <tr>
           <td id=hj_log_pw>비밀번호:</td>
           <td>
               <input type="password"  style="width:170px"id="pw" name="pw" maxlength="12"/>          
            </td>
       </tr>
   </table>
   <center>
       <br>
       <input type="button" id="register" value="회원가입" >
       <input type="button" id="login" value="로그인" >
       <input type="reset" id=reset value="초기화" >
    <br>
    <a id="kakao-login-btn"></a>
   </center>
   </form>
    <br><br>
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
<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">
    $(function() {
        Kakao.init( "62e7309705108ae2522305e0bb74cfb5" );
        Kakao.Auth.createLoginButton({
              container : "#kakao-login-btn"
            , success : function( authObj ) {
                Kakao.API.request({
                      url : "/v2/user/me"
                    , success : function( res ) {
                    	console.log(res.kakao_account.email)
                    	$('#icon').val(res.properties.thumbnail_image);
                    	$('#nickname').val(res.properties.nickname);
                    	$('#kakaoid').val(res.id);
		                $('#kakao_login').submit();
                    }, fail : function( error ) {
                        alert( JSON.stringify( error ) );
                    }
                });
            }
            , fail : function( error ) {
                alert( JSON.stringify( error ));
            }
        });
    });
</script>
<script language="javascript">
   $(document).ready(function () {
   })
   .on('click','#login',function(){
       $.ajax({
           method:'GET',
            url:'ij_login',
            datatype:'text',
            data:{id:$("#id").val(),pw:$("#pw").val()},
            success:function(str){
               console.log(str);
               var id_check=JSON.parse(str)
               if(id_check.length>0) {
                   $('#login_form').submit();
               }
               else {
                   alert('존재하지않는 아이디거나 비밀번호가 맞지않습니다.')
                   $('#id,#pw').val('');
                   $('#id').focus();
               }
            }
        })
   
   })
   .on('click','#register',function(){
       location.href='ij_sign_page';
   })
</script>  
</html>