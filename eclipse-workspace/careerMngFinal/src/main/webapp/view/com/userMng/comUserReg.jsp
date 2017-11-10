<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="">
		<form action="/served/UserInsert.do" method="post" name="form">
            <div class="clearfix"></div>

            <div class="row" style="display: flex; justify-content: center; margin-top: 2em;">
              <div class="col-md-9 col-sm-9 col-xs-12" >
                <div class="x_panel">
                  <div class="x_title"  style="display: flex; justify-content: center">
                    <h2 style="margin:0 auto">사원추가</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div style="float: right;">                     
                    <a href="#" class="btn btn-success btn-xs" onclick="window.open('<%=request.getContextPath()%>/served/EmployeeRegistration.do','window','width=690,height=450, scrollbars=no,left=400,top=200')"><i class="fa fa-share"></i> 추가하기 </a>
                     <a href="#" class="btn btn-primary btn-xs" onclick=document.getElementById("file").click();><i class="fa fa-folder"></i> 엑셀불러오기 </a>
                     <input type="file" name="file" id="file" style="display: none;"/>
                     </div>
                    <div class="clearfix"></div>
                    <table class="table table-bordered" >
                      <thead>
                        <tr>
                          <th>번호</th>
                          <th>사원명</th>
                          <th>회원번호</th>
                          <th>부서</th>
                          <th>담당업무</th>
                          <th>직위</th>
                          <th>입사일</th>
                          <th>퇴사일</th>
                          <th>삭제</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                            <td colspan="9" style="text-align:center;">사원을 추가해주세요</td>
                        </tr>
                      </tbody>
                    </table>
                    <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-check-square-o"></i> 사원등록하기 </a>
                  </div>
                </div>
              </div>

              <div class="clearfix"></div>
            </div>
            </form>
          </div>
          
          <script type="text/javascript">
          	var servedList = new Array();
			function childPop(data){
				servedList.push(data);
				addRow();
				alert(data.name+'님이 추가되었습니다.');
			};   
			function addRow(){
				$('.table > tbody > *').remove();
				for(var i=0;i<servedList.length;i++){
				var rowHtml = "";
				rowHtml += '<tr>';
				rowHtml += '<td>'+(i+1)+'</td>';
				rowHtml += '<td><input type="text" name="slist['+i+'].userName" value="'+servedList[i].name+'" style="width: 60px;" disabled></td>';
				rowHtml += '<td><input type="text" name="slist['+i+'].user_seq" value="'+servedList[i].seq+'" style="width: 40px;" disabled></td>';
				rowHtml += '<td><input type="text" name="slist['+i+'].dept" value="'+servedList[i].dept+'" style="width: 80px;"></td>';
				rowHtml += '<td><input type="text" name="slist['+i+'].task" value="'+servedList[i].task+'" style="width: 80px;"></td>';
				rowHtml += '<td><input type="text" name="slist['+i+'].spot" value="'+servedList[i].spot+'" style="width: 80px;"></td>';
				rowHtml += '<td><input type="text" name="slist['+i+'].task_start_date" value="'+servedList[i].task_start_date+'" style="width: 100px;"></td>';
				rowHtml += '<td><input type="text" name="slist['+i+'].task_end_date" value="'+servedList[i].task_end_date+'" style="width: 100px;"></td>';
				rowHtml += '<td><a href="#" id="del">삭제</a></td>';
				$('.table > tbody:last').append(rowHtml);
				}
				return false;
			};
			window.onload=function(){
				$('#del').click(function(){
					alert($(this).index());
				});
			};
          </script>