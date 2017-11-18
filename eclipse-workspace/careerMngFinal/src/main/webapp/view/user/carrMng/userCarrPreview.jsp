<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
   <meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />

   <title>스펙업 경력증명서 발금 | spectUP!!</title><!-- //타이틀에 선택된 시험명 데이타 표시 -->
<link rel="stylesheet" type="text/css" href="../../../view/css/form.css" />
<script src="../../../vendors/jquery/dist/jquery.min.js"></script>
     <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript" src="../../../view/js/common.js"></script>
<script type="text/javascript">
$(document).ready(function() {
   if(false){
      alert("");
      if(confirm('현재창을 닫습니다.')){
         self.close();
      }
   }
   $("link[href='./js/editor_default.css']").attr("href","");

      if ( "chrome" == "safari"   ){
         $(document).find("th").css({"font-weight":"normal"});
         $(document).find("h2").css({"font-weight":"normal"});
         $(document).find(".title.center").css({"font-weight":"normal"});
         $(document).find(".safari").css({"font-weight":"normal"});
      }
});

function lfnResize() {

   if($("#ifAttendContents").length > 0){
      if($("#taAttendContents").val()!=""){
         contSet("ifAttendContents", "taAttendContents");//iframe에 컨텐츠 셋팅 및 높이조절
      } else {
         $("#ifAttendContents").hide();
      }
   }
   
   if($("#ifSelContents").length > 0){
      if($("#taSelContents").val()!=""){
         contSet("ifSelContents", "taSelContents");//iframe에 컨텐츠 셋팅 및 높이조절
      } else {
         $("#ifSelContents").hide();
      }
   }
   
   if($("#ifRemarks").length > 0){
      if($("#taRemarks").val()!=""){
         contSet("ifRemarks", "taRemarks");//iframe에 컨텐츠 셋팅 및 높이조절
      } else {
         $("#ifRemarks").hide();
      }
   }
}

function goPrint() {
   var necYn = $("input[name=necYN]:checked").val();
   var divAhtml = "";
   var divShtml = "";

   if ( "chrome" == "safari"   ){
      // 사파리에서 strong 태그 관련 글씨가 깨지는 현상때문에 출력시 strong 태그  공백으로 replace 한다.
      divAhtml =  $('#divAttendContents').html().replace(/<strong>/g,  "");
      divAhtml =  divAhtml.replace(/<\/strong>/g,  "");
      $('#divAttendContents').html(divAhtml);

      divShtml =  $('#divSelContents').html().replace(/<strong>/g,  "");
      divShtml =  divShtml.replace(/<\/strong>/g,  "");
      divShtml =  divShtml.replace(/bold/g,  "");
      $('#divSelContents').html(divShtml);
   }

   if (necYn == "Y") {
      $("#divSelContents").hide();
   } else {
      $("#divSelContents").show();
   }
   //추가 출력전 시험에필요한정보멘트 가려줌 
    $("#printX").hide();
   window.print();
    $("#printX").show();
}

function carrPrint(){
	$("#printX").hide();
	   window.print();
    $("#printX").show();
}

</script>
</head>
<body class="print">

   <p class="textBox">
      &lt;한국 소프트웨어산업협회는【고객 매우 만족】을 위해 최선을 다하겠습니다.&gt;
   </p>


   <div class="printForm">
      <table>
         <caption>경력 증명서</caption>
         <colgroup>
            <col style="width:95px" />
            <col style="width:198px" />
            <col style="width:95px" />
            <col style="width:187px" />
            <col style="width:130px" />
         </colgroup>
         <tbody>
            <tr>
                  <td scope="row" class="fom"></td>
               <td colspan="3" class="do"><strong>경력 증명서</strong></td>
               <td rowspan="4" class="photo">

                  <div><img src="../uploads/${UserImpo.profile_img_orig }" alt="김보성 사진" stype="position:static" /></div>
               </td>
            </tr>
            <tr>
               <th scope="row">회원번호</th>
               <td class="ds"><strong>${UserImpo.seq }</strong></td>
               <th scope="row">구분</th>
               <td class="ds"><strong>기술경력</strong></td>
            </tr>
            <tr>
               <th scope="row">성명</th>


               <td><strong>${UserImpo.name }</strong></td>

               <th scope="row">생년월일</th>
               <td><strong>199년 08월 17일</strong></td>

            </tr>
            <tr>
               <th scope="row">전화번호</th>
               <td><strong>${UserImpo.tel }</strong></td>
               <th scope="row">이메일</th>
               <td><strong>${UserImpo.email }</strong></td>
            </tr>
            <tr>
               <th scope="row">주소</th>
               <td colspan="4">
                  <table class="tbl_inner2" style="margin-left:0px;" summary="시험 일시 및 장소 정보제공">
                     <caption></caption>
                     <colgroup>
                        <col style="width:17%" />
                        <col style="width:43%" />
                        <col style="width:40%" />
                     </colgroup>
                     <tbody>
                        <tr>
                           <td>
                              <strong class="safari">${UserImpo.addr }</strong>
                           </td>
                        </tr>
                     </tbody>
                  </table>
               </td>
            </tr>
         </tbody>
      </table>
      <dl>
         <dt><strong>경력사항</strong></dt>
           <div class="table-responsive">
                          <table class="table table-striped jambo_table">
                            <thead>
                              <tr class="headings">
                                <th class="column-title">회사명</th>
                                <th class="column-title">사업명 </th>
                                <th class="column-title">부서</th>
                                <th class="column-title">담당업무</th>
                                <th class="column-title">직급</th>
                                <th class="column-title no-link last"><span class="nobr">근무기간</span>
                                </th>
                              </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="carrVO" items="${carrList}" varStatus="status">
                            	<tr>
                            		<td>${carrVO.comName}</td>
				                	<td>${carrVO.busiName}</td>
				                	<td>${carrVO.task}</td>
				                	<td>${carrVO.dept}</td>
				                	<td>${carrVO.spot}</td>
				                	<td>${carrVO.taskStartDate} ~ ${carrVO.taskEndDate}</td>
                            	</tr>
                            	</c:forEach>
                            </tbody>
                            </table>
                            </div>
  
         <dt><strong>확인사항</strong></dt>
         <dd>
                 <ul>
                 <li> </li>
               <li >위와 같은 경력을 증명합니다.</li>
                      <li> </li>
               <li>2017년 11월 17일</li>

               <li ><strong>한국 소프트웨어산업협회(spec up) (확)<img src="../../../build/images/stamp.png" class="te"alt="도장" style="position:absolute;left:65%;"/></strong></li>

                  </ul>
            <div id="divAttendContents"></div>
            <div id="divSelContents"></div>
         </dd>

      </dl>
      <p class="textCenter">* 본 경력증명서는 결과에 따라 편의제공 내역이 달라질 수 있습니다. </p>



      <div id="printX">
         <div class="bdrBox type3">
            <p>출력하겠습니다.
            <span><input type="radio" value="Y" name="necYN" id="necY" checked="checked"/> <label for="necY">예</label> <input type="radio" value="N" name="necYN" id="necN" /> <label for="necN">아니오</label></span>
            </p>
         </div>
      </div>
      <div class="btn_center">
      <!-- 2016.06.02 jws : 이종용 과장 요청 약도보기 팝업  -->
         
         <button class="btn2 btncolor1" type="button" onclick="window.close();"><span>취소하기</span></button>
      
         <button class="btn2 btncolor1" type="button" onclick="carrPrint();"><span>경력증명서 출력</span></button>
      </div>
   </div>
</body>
</html>