<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function idchk(){

}

</script>
</head>
<body>
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
        </form>
</body>
</html>