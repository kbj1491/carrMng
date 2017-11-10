<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script type="text/javascript">
	    function divChk(div){
			if(div=="user"){
				document.getElementById("comDiv").className = " ";
				document.getElementById("userDiv").className = "active";
			}else if(div=="com"){
				document.getElementById("comDiv").className = "active";
				document.getElementById("userDiv").className = " ";
			}
		}
	    
    </script>
	<div class="form-container">
        <h1 class="logo">CAREER MANAGEMENT</h1>
        <div class="sign-btn">
            <a href="/certi/main.do" class="active">Sign In</a>
            <a href="/certi/join1.do">Register</a>
        </div>
        <form action="/certi/login.do" name="log-form" method="post">
            <div class="login-type clear-fixed">
                <input class="blind" type="radio" id="user" name="div" value="user" checked><label id="userDiv" for="user" onclick="divChk('user')" class="active">개인</label>
                <input class="blind" type="radio" id="com" name="div" value="com"><label id="comDiv" for="com" onclick="divChk('com')">회사</label>
            </div>
            <div class="sign-form">
                <label for="id">ID</label>
                <input type="text" id="id" name="id">
                <label for="pw">Password</label>
                <input type="password" id="pw" name="pw">
                <input type="submit" value="SUBMIT">
            </div>
            <div class="util clear-fixed">
                <div class="login-state">
                    <input type="checkbox" id="keep" name="keep" value="">
                    <label for="keep">Keep mem sign in</label>
                </div>
                <a href="#">Forget password?</a>
            </div>
        </form>
        <p class="copy">Copyrights @ 2017 BS Career Services</p>
    </div>
