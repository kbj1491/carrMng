<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-md-12 col-sm-12 col-xs-12" style="display: flex; justify-content: space-around;">
      
       <div class="col-md-6 col-sm-6 col-xs-6" id="cont">
           <div class="btn-primary" style="height: 400px; display: flex; justify-content: center;">
           <h4 style="align-self: center;">국가DB로 불러오기</h4>
           </div>
       </div>
        <div class="col-md-6 col-sm-6 col-xs-6" id="direct">
          <div class="btn-danger" style="height: 400px; display: flex; justify-content: center;">
           <h4 style="align-self: center;">직접 추가하기</h4>
           </div>
       </div>
       </div>
       
       <script type="text/javascript">
       window.onload=function(){
        $('#cont').click(function(){
        	location.href="/served/comContUserReg.do";//TODO 주소값 지정
        });
        $('#direct').click(function(){
        	location.href="/served/comDirectUserReg.do";
        });
       }
       </script>