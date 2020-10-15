<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
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
   #hj_sign{
   		font-size:40px;
   		font-family: 'Kufam', cursive;
   }
   #hj_sign_table{
   		width:600px;
   		height:600px;
   		border:1px solid rgb(160, 158, 158);
   		font-family: 'Poor Story';
   		border-radius:5px;
   	}
   	#hj_sign_main,#hj_sign_main2{
   		background-color:rgb(32, 51, 65);
   		color:white;
   		font-weight: bold;
   		font-size:27px;
   	}
   	#hj_log_id,#hj_log_pw{
   		font-weight: bold;
   		color:rgb(32, 51, 65);
   		font-size:18px;
   		padding:0 10px 0 10px;
   		border-bottom: 1px solid rgb(160, 158, 158);
   		width:100px;
   	}
   	#hj_log_em{
   		font-weight: bold;
   		color:rgb(32, 51, 65);
   		font-size:18px;
   		padding:0 10px 0 10px;
   		width:100px;
   	}

   	#hj_log_txt{
   		border-bottom: 1px solid rgb(160, 158, 158);
   		height:10px;
   	}
   	#hj_log_name,#hj_log_bir,#hj_log_addr,#hj_log_gen{
   		font-weight: bold;
   		color:rgb(32, 51, 65);
   		font-size:18px;
   		padding:0 10px 0 10px;
   		border-bottom: 1px solid rgb(160, 158, 158);
   		width:100px;
   	}
    #hj_log_mob{
   		font-weight: bold;
   		color:rgb(32, 51, 65);
   		font-size:18px;
   		padding:0 10px 0 10px;
   		width:100px;
   	}
   	#id_check,#hj_post_but{
   		height: 30px;
        width: 100px;
    	text-align:center;
        background-color: rgb(32, 51, 65);
        color:white;
        font-size:15px ;
        font-family: 'Poor Story';  
        font-weight: bold; 
        margin-bottom:20px;
        border-radius:5px;
   	}
   	#id_check{
   		margin:5px 0 5px 0;
   	}
   	#register,#hj_reset{
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
    <h1 align="center" id=hj_sign>HUMAN<br>&nbsp;&nbsp;&nbsp;&nbsp;PLAN&nbsp;&nbsp;&nbsp;&nbsp;</h1>
<form name="join"  id="join" action="ij_sign_up" method="post">
   <table align="center" id=hj_sign_table >
       <tr align="center">
           <td colspan="2" id=hj_sign_main >회원기본정보</td>
       </tr>
       <tr>
           <td id=hj_log_id>아이디:</td>
           <td id=hj_log_txt>
                 <input type="text" style="width:170px"id="id" name="id" maxlength="12"  id_check="no"> ※4-12자의 영문 대소문자와 숫자로만 입력
                 <input type="button" id="id_check" value="아이디중복검사">
           </td>
       </tr>
       <tr>
           <td id=hj_log_pw>비밀번호:</td>
           <td id=hj_log_txt><input type="password"  style="width:170px"id="pw" name="pw" maxlength="12"> ※4-12자의 영문 대소문자와 숫자로만 입력</td>
       </tr>
       <tr>
           <td id=hj_log_pw>비밀번호 확인:</td>
           <td id=hj_log_txt><input type="password" style="width:170px" id="checkpw" name="checkpw" maxlength="12"></td>
       </tr>
       <tr>
           <td id=hj_log_em>이메일 주소:</td>
           <td><input type="text" style="width:170px" id="email" name="email"> ex)abcd@naver.com</td>
       </tr>
       <tr align="center">
           <td colspan="2" id=hj_sign_main2>개인정보(선택)</td>
       </tr>
       <tr>
           <td id=hj_log_name>이름:</td>
           <td id=hj_log_txt><input type="text" style="width:170px" name="name" maxlength="12"></td>
       </tr>
       <tr>
           <td id=hj_log_bir>생년월일:</td>
           <td id=hj_log_txt>
               <input type="date" style="width:170px" id="years" name="years">
           </td>
       </tr>
              <tr>
           <td id=hj_log_addr>주소:</td>
           <td id=hj_log_txt>
            <input type="text" id="postcode" placeholder="우편번호">
            <input type="button" id=hj_post_but onclick="address_code()" value="우편번호 찾기"><br>
            <input type="text" id="roadAddress" placeholder="도로명주소">
            <input type="text" id="jibunAddress" placeholder="지번주소">
            <span id="guide" style="color:#999;display:none"></span>
            <input type="text" id="detailAddress" placeholder="상세주소">
            <input type="text" id="extraAddress" placeholder="참고항목">
            <input type="hidden" id="address" value="" name="address">
           </td>
       </tr>

              <tr>
           <td id=hj_log_gen>성별:</td>
           <td id=hj_log_txt>
               <select style="width:170px" id="gender"  name="gender">
                     <option value="">선택안함</option>
                     <option value="남자">남자</option>
                     <option value="여자">여자</option>
               </select>
           </td>
       </tr>

              <tr>
           <td id=hj_log_mob>모바일:</td>
           <td>
                <input type="text" style="width:170px" id="mobile" name="mobile">
           </td>
       </tr>

   </table>
   <center>
       <br>
       <input type="button" id="register" value="회원가입" >
       <input type="reset" id="hj_reset" value="다시입력">
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
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function address_code() {
        new daum.Postcode({
            oncomplete: function(data) {

                var roadAddr = data.roadAddress; 
                var extraRoadAddr = ''; 

                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("roadAddress").value = roadAddr;
                document.getElementById("jibunAddress").value = data.jibunAddress;
                
                if(roadAddr !== ''){
                    document.getElementById("extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

<script language="javascript">
    
function validate() {
    var reg_exp = /^[a-zA-Z0-9]{4,12}$/;
    var reg_email = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    var id = $('#id')[0];
    var pw = $('#pw')[0];
    var email = $('#email')[0];
    if($('#id').attr('id_check')=="no") {
       alert("아이디중복확인 해주세요");
        return false;
    }
    if(!check(reg_exp,id,"아이디는 4~12자의 영문 대소문자와 숫자로만 입력")) {
        return false;
    }
    if(!check(reg_exp,pw,"패스워드는 4~12자의 영문 대소문자와 숫자로만 입력")) {
        return false;
    }
    if(join.pw.value != join.checkpw.value) {
        alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
        join.checkpw.value = "";
        join.checkpw.focus();
        return false;
    }
    if(email.value=="") {
        alert("이메일을 입력해 주세요");
        email.focus();
        return false;
    }
    if(!check(reg_email, email, "적합하지 않은 이메일 형식입니다.")) {
        return false;
    }

    if(join.name.value=="") {
        alert("이름을 입력해 주세요");
        join.name.focus();
        return false;
    }
    alert("회원가입이 완료되었습니다.");
    $('#address').val('('+$('#postcode').val()+')'+$('#roadAddress').val()+'  '+$('#jibunAddress').val()+'  '+$('#detailAddress').val());
    $('#join').submit();
}

function check(re, what, message) {
    if(re.test(what.value)) {
        return true;
    }
    alert(message);
    what.value = "";
    what.focus();
    return false;
}
$(document).ready(function () {

})
.on('click','#register',function(){
    validate();
})
.on('click','#id_check',function(){
    var reg_exp = /^[a-zA-Z0-9]{4,12}$/;
    var id = $('#id')[0];
    if(!check(reg_exp,id,"아이디는 4~12자의 영문 대소문자와 숫자로만 입력")) {
        return false;
    }
    $.ajax({
        method:'GET',
         url:'ij_id_check',
         datatype:'text',
         data:{id:$("#id").val()},
         success:function(str){
            var id_check=JSON.parse(str)
            if(id_check.length>0) {
               alert('존재하는 아이디입니다.')
               $("#id").val('')
                $("#id").focus()
            }
            else {
               id_ok=confirm('사용가능한 아이디입니다. 사용하시겠습니까?')
               if(id_ok) {
                  $("#id").attr('id_check','yes')
                  $("#id").attr('readonly','true')
               }
               else {
                   $("#id").val('')
                   $("#id").focus()
               }
            }
 
         }
     })
})
</script>  
</html>