<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="">
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
                    <form action="/served/excelImport.do" method="post" id="excelForm" name="excelForm" enctype="mulipart/form-data">             
                    <a href="#" class="btn btn-success btn-xs" onclick="window.open('<%=request.getContextPath()%>/served/EmployeeRegistration.do','window','width=700,height=500, scrollbars=no,left=400,top=200')"><i class="fa fa-share"></i> 추가하기 </a>
                     <a href="#" class="btn btn-primary btn-xs" onclick="document.getElementById('file').click();"><i class="fa fa-folder"></i> 엑셀불러오기 </a>
                     <input type="file" name="file" id="file" onchange="addfile();" style="display: none;"/>
                     </form>
                     </div>
                    <div class="clearfix"></div>
		<form action="/served/UserInsert.do" method="post" id="form" name="form">
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
                    <a href="#" class="btn btn-danger btn-xs" onclick="addUser()" id="add"><i class="fa fa-check-square-o"></i> 사원등록하기 </a>
            </form>
                  </div>
                </div>
              </div>

              <div class="clearfix"></div>
            </div>
          </div>
          
          <script type="text/javascript">
          	var servedList = new Array();
			function childPop(data){
				servedList.push(data);
				addRow();
				console.log(data);
				alert(data.userName+'님이 추가되었습니다.');
			};   
			function addRow(){
				$('.table > tbody > *').remove();
				for(var i=0;i<servedList.length;i++){
				var rowHtml = "";
				rowHtml += '<tr>';
				rowHtml += '<td>'+(i+1)+'</td>';
				rowHtml += '<td><input type="text" name="slist['+i+'].userName" value="'+servedList[i].userName+'" style="width: 60px;" readonly></td>';
				rowHtml += '<td><input type="text" name="slist['+i+'].user_seq" value="'+servedList[i].user_seq+'" style="width: 40px;" readonly></td>';
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
			document.ready = function(){
				$('#del').click(function(){
					alert($(this).index());
				});
			};
				function addfile(){
					var formData = new FormData(document.getElementById('excelForm'));
					formData.append('file',$('input[type=file]')[0].files[0]);
					$.ajax({
						type: "POST",
						url: "/served/excel_import.do",
						data: formData,
						dataType: 'json',
						processData: false,
						contentType: false,
						success: function(data){
							var sList = data.sList;
							var xList = data.xList;
							var warm="";
							if(sList.length>0){
								warm+=sList.length+'명의 회원이 추가되었습니다.\n';
								$.each(sList, function(i,item){
									servedList.push(item);
								});
								addRow();
							}else{
								warm+='회원이 추가되지 않았습니다.'
							}
							if(xList.length>0){
									warm+=xList.length+"의 회원정보가 존재하지 않습니다.\n";
									warm+="회원번호:회원명\n";
								$.each(xList, function(i,item){
									warm+=item.user_seq+':'+item.userName+',';
								});
							}
							alert(warm);
						},
						error: function(e){
							alert(e.responseText);
						}
					});
				};
				
				function addUser(){
					document.getElementById('form').submit();
					alert(servedList.length+'명이 추가되었습니다.');
				}
			
          </script>