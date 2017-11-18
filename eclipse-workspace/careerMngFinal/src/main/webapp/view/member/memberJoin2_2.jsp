<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form name="usermember" action="/com/comInsert.do" method="post">
          <table>
              <caption>단체 회원 가입</caption>
              <tr>
                  <td><label for="id">아이디</label>
                      </td>
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
                  <td><label for="name">단체명</label></td>
                  <td><input type="text" name="name"></td>
              </tr>
              <tr>
                  <td><label for="leader">대표명</label></td>
                  <td><input type="text" name="leader"></td>
              </tr>
              <tr>
                  <td><label for="comNum1">사업자등록번호</label></td>
                  <td><input type="text" name="comNum1">-<input type="text" name="comNum2"></td>
              </tr>
              <tr>
                  <td><label for="tel1">전화번호</label></td>
                  <td><select name="tel1">
		<option value="010">010</option>
		<option value="016">016</option>
		<option value="017">017</option>
		<option value="018">018</option>
		<option value="019">019</option>				 
		<option value="02">02</option>				 
		<option value="033">033</option>				 
</select>-<input type="text" name="tel2">-<input type="text" name="tel3"></td>
              </tr>
              <tr>
                  <td><label for="addr">주소</label></td>
                  <td><input type="text" name="addr"></td>
              </tr>
              <tr>
                  <td><label for="fax1">팩스번호</label></td>
                  <td><input type="text" name="fax1">-<input type="text" name="fax2">-<input type="text" name="fax3"></td>
              </tr>
              <tr>
                  <td><label for="type">업종</label></td>
                  <td><input type="text" name="type"></td>
              </tr>
          </table>
          <input type="hidden" name="div" value="com">
          
          <input type="hidden" name="tel" value="0102323222">
          <input type="hidden" name="comNum" value="12321-2323232">
          <input type="submit" value="가입신청"><a href="./memberJoin3.jsp">가입신청</a>
      </form><input type="hidden" name="pax" value="02-2323-2323">
