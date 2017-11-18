<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	<form name="usermember" action="/user/userInsert.do" method="post">
            <table>
                <caption>개인 회원 가입</caption>
                <tr>
                    <td rowspan="4">사진</td>
                    <td><label for="id">아이디</label></td>
                    <td><input type="text" name="id"><input type="button" onclick="idchk()" value="중복확인"></td>
                </tr>
                <tr>
                    <td><label for="pw">비밀번호</label></td>
                    <td><input type="password" name="pw"></td>
                </tr>
                <tr>
                    <td><label for="pwchk">비밀번호 확인</label></td>
                    <td><input type="password" name="pwchk"></td>
                </tr>
                <tr>
                    <td><label for="name">이름(한글)</label></td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td><label for="profileImg">사진등록</label></td>
                    <td colspan="2"><input type="file" name="profile_img_orig"></td>
                </tr>
                <tr>
                    <td><label for="tel1">전화번호</label></td>
                    <td colspan="2"><select name="tel1" onchange="changeTel()">
				<option value="010">010</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>				 
		</select>-<input type="text" name="tel2" onchange="changeTel()">-<input type="text" name="tel3" onchange="changeTel()"></td>
                </tr>
                <tr>
                    <td><label for="email1">이메일</label></td>
                    <td colspan="2"><input type="text" name="email1" onchange="changeEmail()">@<input type="text" name="email2" onchange="changeEmail()"></td>
                </tr>
                <tr>
                    <td><label for="addr">주소</label></td>
                    <td colspan="2"><input type="text" name="addr"></td>
                </tr>
                <tr>
                    <td><label for="email_chk">이메일 수신 여부</label></td>
                    <td colspan="2"><input type="radio" name="emailBool" value="y" checked>예<input type="radio" name="emailBool" value="n">아니오</td>
                </tr>
                <tr>
                    <td><label for="sms_chk">SMS 수신 여부</label></td>
                    <td colspan="2"><input type="radio" name="smsBool" value="y" checked>예<input type="radio" name="smsBool" value="n">아니오</td>
                </tr>
            </table>
            <input type="hidden" name="div" value="user">
            <input type="hidden" name="tel" value="01023320322"><input type="hidden" name="email" value="kbj1491@dreamwiz.com">
          	<input type="submit" value="가입신청"><a href="./memberJoin3.jsp">가입신청</a>
        </form> -->
        <style>
.sd {
font-size:18px;
padding-bottom: 30px;
padding-right: 10px;
padding-left: 10px;

}
.sds {
font-size:20px;
border-bottom:1px solid #9E9E9E;
width:50%;
padding-bottom:10px;
}
.sds1 {
font-size:20px;
border-bottom:1px solid #9E9E9E;
width:20%;
padding:4px;
}
.sds2 {
font-size:20px;
border-bottom:1px solid #9E9E9E;
width:80%;
padding:4px;
}
.sdd{
width:35%;
padding:10px 0;
/* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#2962ff+0,00bfa5+100 */
background: #2962ff; /* Old browsers */
background: -moz-linear-gradient(45deg, #2962ff 0%, #00bfa5 100%); /* FF3.6-15 */
background: -webkit-linear-gradient(45deg, #2962ff 0%,#00bfa5 100%); /* Chrome10-25,Safari5.1-6 */
background: linear-gradient(45deg, #2962ff 0%,#00bfa5 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2962ff', endColorstr='#00bfa5',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
color:white;
margin-top:20px;
text-align:center;
border-radius:20px;
letter-spacing:2px;
cursor:pointer;
}
.dds{
font-size:20px;
padding:5px;
}
.ds{
font-size:30px;
text-align: center;
padding-bottom: 20px;]
}
.dsbtn{
width:20%;
padding:5px 0;
background: #2962ff; /* Old browsers */
background: -moz-linear-gradient(45deg, #2962ff 0%, #00bfa5 100%); /* FF3.6-15 */
background: -webkit-linear-gradient(45deg, #2962ff 0%,#00bfa5 100%); /* Chrome10-25,Safari5.1-6 */
background: linear-gradient(45deg, #2962ff 0%,#00bfa5 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2962ff', endColorstr='#00bfa5',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
color:white;
text-align:center;
border-radius:20px;
letter-spacing:2px;
cursor:pointer;
}

</style>

   <form name="usermember" action="/user/userInsert.do" id="form" method="post" enctype="multipart/form-data">
      <h1 class="ds">개인 회원 가입</h1>
      <br>
            <table>
                <tr>
                    <td><label class="sd" for="id">아이디</label></td>
                    <td><input type="text" onclick="chgText();" class="sds" name="id"><input class="dsbtn" type="button" onclick="idchk()" value="중복확인"></td>
                </tr>
                <tr>
                    <td><label class="sd" for="pw">비밀번호</label></td>
                    <td><input type="password" class="sds" id="pw" name="pw"></td>
                </tr>
                <tr>
                    <td><label class="sd" for="pwchk">비밀번호 확인</label></td>
                    <td><input type="password" class="sds" id="pwchk" name="pwchk"></td>
                </tr>
                <tr>
                    <td><label class="sd" for="name">이름(한글)</label></td>
                    <td><input type="text" class="sds" name="name"></td>
                </tr>
                <tr>
                    <td><label class="sd" for="profileImg">사진등록</label></td>
                    <td colspan="2" class="dds"><input type="file" name="uploadFile"></td>
                </tr>
                <tr>
                    <td><label class="sd" for="tel1">전화번호</label></td>
                    <td colspan="2"  class="dds"><select name="tel1">
            <option value="010">010</option>
            <option value="016">016</option>
            <option value="017">017</option>
            <option value="018">018</option>
            <option value="019">019</option>             
      </select>-<input type="text" class="sds1" name="tel2" >-<input type="text" class="sds1" name="tel3" ></td>
                </tr>
                <tr>
                    <td><label class="sd" for="email1">이메일</label></td>
                    <td colspan="2"><input type="text" class="sds1" name="email1" >@<input type="text" class="sds1" name="email2" ></td>
                </tr>
                <tr>
                    <td><label class="sd" for="addr">주소</label></td>
                    <td colspan="2"  class="dds"><input type="text" class="sds2" name="addr"></td>
                </tr>
                <tr>
                    <td><label class="sd" for="email_chk">메일 수신 여부</label></td>
                    <td colspan="2" class="dds"><input type="radio" name="emailBool" value="y" checked>예 &nbsp;&nbsp;&nbsp;<input type="radio" name="emailBool" value="n">아니오</td>
                </tr>
                <tr>
                    <td><label class="sd" for="sms_chk">문자 수신 여부</label></td>
                    <td colspan="2" class="dds"><input type="radio" name="smsBool" value="y" checked>예 &nbsp;&nbsp;&nbsp;<input type="radio" name="smsBool" value="n">아니오</td>
                </tr>
            </table>
            <input type="hidden" name="div" value="user">
            <input type="hidden" name="tel" value=""><input type="hidden" name="email" value="">
             <input class="sdd" type="button" onclick="memberAdd();" value="가입신청">
        </form>
        
        <script>
var idDul = false;
function idchk(){
	var id = $('input[name=id]').val();
	if(!id){alert('아이디를 입력해주세요.');return false;};
	$.ajax({
        url: "/certi/dupIdCheck.do",
        method: "POST",
        type: "json",
        data: {id: id},  
          success: function (data) {
        	  if(data!=true){
        		  alert('\"'+id+'\"는 사용가능한 아이디입니다.');
        		  idDul=true;
        	  }else{
        		  alert(id+'는 사용 불가능한 아이디입니다.');
        	  }
        },
        error: function (e) {
            console.log("ERROR : ", e);
        }
    });
}
function chgText(){
	idDul=false;
}

function memberAdd(){
	if($('#pw').val()!=$('#pwchk').val()){
		alert('비밀번호를 다시한번 확인해주세요.');
		return false;
	}
	if(idDul==true){
		var tel = "";
		tel += $("select[name=tel1]").val();
		tel += $('input[name=tel2]').val();
		tel += $('input[name=tel3]').val();
		
		var email = "";
		email += $('input[name=email1]').val();
		email += "@";
		email += $('input[name=email2]').val();
		$('input[name=tel]').val(tel);
		$('input[name=email]').val(email);
		document.getElementById('form').submit();
	}else{
		alert('아이디를 중복검사가 되지 않았습니다.');
		return false;
	}
}

</script>
