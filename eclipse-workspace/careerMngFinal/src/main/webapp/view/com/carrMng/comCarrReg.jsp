<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
 <form action="/carr/comCarrInsert.do" name="userCarrInput" method="post">
	<div class="">
             <div class="page-title">
              <div class="title_left">
                <h3>경력 추가하기</h3>
              </div>
             </div>
            </div>
            <div class="clearfix"></div>
              <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>사업선택 </h2>
                        <ul class="nav navbar-right panel_toolbox">
                          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                          </li>
                        </ul>
                        <div class="clearfix"></div>
                      </div>

                      <div class="x_content">

                        <div class="table-responsive">
                          <table class="table table-striped jambo_table">
                            <thead>
                              <tr class="headings">
                                <th>
                                  <input type="checkbox" id="check-all" class="flat" checked>
                                </th>
                                <th class="column-title">사업명 </th>
                                <th class="column-title">확인자 </th>
                                <th class="column-title">확인자 연락처 </th>
                                <th class="column-title">사업시작일 </th>
                                <th class="column-title">사업종료일 </th>
                                <th class="column-title">등록일 </th>
                              </tr>
                            </thead>
                            <tbody>
                              <c:forEach var="busiInfo" items="${busiList}" varStatus="status">
                              <tr class=" ">
                                <td class="a-center ">
                                  <input type="radio" name="busi_seq" class="flat" name="table_records" value="${busiInfo.busi_seq}">
                                </td>
                                <td class=" ">${busiInfo.busiName}</td>
                                <td class=" ">${busiInfo.chkUser}</td>
                                <td class=" ">${busiInfo.chkTel}</td>
                                <td class=" ">${busiInfo.startDate}</td>
                                <td class=" ">${busiInfo.endDate}</td> 
                                <td class=" ">${busiInfo.regDate}</td>
                              </tr>
                            </c:forEach>
                            </tbody>
                          </table>
                        </div>
                  </div>
                </div>
              </div>
             
              
                <div class="col-md-12 col-sm-12 col-xs-12">
                          
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>경력 추가 사원 </h2>
                        <ul class="nav navbar-right panel_toolbox">
                          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                          </li>
                        </ul>
                        <div class="clearfix"></div>
                      </div>

                      <div class="x_content">

                        <div class="table-responsive">
                          <table class="table table-striped jambo_table addUser">
                            <thead>
                              <tr class="headings">
                                <th class="column-title">번호 </th>
                                <th class="column-title">사원명 </th>
                                <th class="column-title">사원번호 </th>
                                <th class="column-title">부서 </th>
                                <th class="column-title">담당업무 </th>
                                <th class="column-title">직위 </th>
                                <th class="column-title">근무시작일 </th>
                                <th class="column-title">근무종료일 </th>
                                <th class="column-title">삭제 </th>
                              </tr>
                            </thead>
                            <tbody>
                            <td colspan="9" style="text-align:center;font-size:30px;">사원을 추가해주세요</td>
                            </tbody>
                          </table>
                          <div class="pull-left">
                          <input type="button" class="btn btn-primary" value="사원추가" onclick="window.open('<%=request.getContextPath()%>/carr/comCarrPopup.do','window','width=650,height=450, scrollbars=yes,left=400,top=200')">
                          <input type="button" class="btn btn-primary" id="clickAddDate" value="사업날짜 입력" onclick="addDate()"></div>
                          <div class="pull-right">
                          <input type="submit" class="btn btn-primary" id="add" value="경력 추가"></div>
                        </div>
                    </div>
                  </div>
                </div>
    </form>
    <script type="text/javascript">
    var servedList = new Array();
	function sendToParentsList(sList){
		alert(sList.length+'명의 사원이 추가되었습니다.');
		for(var i=0;i<sList.length;i++){
			servedList.push(sList[i]);
		}
		addRow();
	};   
	function addRow(){
		$('.addUser > tbody > *').remove();
		for(var i=0;i<servedList.length;i++){
		var rowHtml = "";
		rowHtml += '<tr>';
		rowHtml += '<td>'+(i+1)+'</td>'
		rowHtml += '<td><input type="text" name="carrList['+i+'].userName" value="'+servedList[i].userName+'" style="width: 60px;" readonly></td>';
		rowHtml += '<td><input type="text" name="carrList['+i+'].user_seq" value="'+servedList[i].user_seq+'" style="width: 40px;" readonly></td>';
		rowHtml += '<td><input type="text" name="carrList['+i+'].dept" value="'+servedList[i].dept+'" style="width: 80px;"></td>';
		rowHtml += '<td><input type="text" name="carrList['+i+'].task" value="'+servedList[i].task+'" style="width: 80px;"></td>';
		rowHtml += '<td><input type="text" name="carrList['+i+'].spot" value="'+servedList[i].spot+'" style="width: 80px;"></td>';
		rowHtml += '<td><input type="text" id=startDate name="carrList['+i+'].taskStartDate" value="" style="width: 100px;"></td>';
		rowHtml += '<td><input type="text" id=endDate name="carrList['+i+'].taskEndDate" value="" style="width: 100px;"></td>';
		rowHtml += '<td><a href="#" id="del">삭제</a></td>';
		$('.addUser > tbody').append(rowHtml);
		}
		return false;
	};
	function addDate(){
		var Date = Object();
		var radio = $('input[name=busi_seq]:checked').val();
		if(!radio){
			alert('사업을 선택해주세요.');
			return false;
		}else{
			var tr = $('input[name=busi_seq]:checked').parent().parent().parent().eq(0);
			var td = tr.children();
			Date.startDate = td.eq(4).text();
			Date.endDate = td.eq(5).text();
			var startDate = $('input[id=startDate]');
			var endDate = $('input[id=endDate]');
			startDate.each(function(){
				if(!$(this).val()){
					$(this).val(Date.startDate);
				}
			});
			endDate.each(function(){
				if(!$(this).val()){
					$(this).val(Date.endDate);
				}
			});
			
		}
		return false;
	};
	document.ready = function(){
		$('#del').click(function(){
			alert($(this).index());
		});
		$('#add').click(function(){
			document.getElementById('form').submit();
			alert(servedList.length+'명이 추가되었습니다.');
		});
	};
    </script>
    