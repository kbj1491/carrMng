<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>경력 등록</h3>
              </div>

            </div>
            <div class="clearfix"></div>
			<div class="row">
             
              <div class="col-md-12 col-sm-5 col-xs-12 form-group" >
             <div class="x_panel" >
                    <div class="x_title" style="display: flex;justify-content: center">
                        <h2>1. 회사명 혹은 사업명 검색 </h2>
                        <div class="clearfix"></div>
                      </div>
                      <div class="x_content" style="display: flex;justify-content: center">
                      <div class="col-md-6 col-sm-5 col-xs-12 form-group top_search" style="display: flex;justify-content: center">
                     <div class="input-group">
                    <input type="text" name="searchStr" id="searchStr" class="form-control" onkeydown="if(event.keyCode == 13){$('#searchBtn').click(); return false;}" style="margin-left:10px;" placeholder="회사/사업조회">
                    <span class="input-group-btn">
                      <button class="btn btn-default" id="searchBtn" type="button">조회</button>
                    </span>
                          </div>
                  </div>
                  </div>
                  </div>
                  </div>
               <form class="form-horizontal form-label-left" name="form" id="form" action="/carr/userCarrInsert.do" method="post" novalidate>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title" style="display: flex;justify-content: center;">
                        <h2>2. 해당 사업선택 </h2>
                        <ul class="nav navbar-right panel_toolbox">
                          <li><a class="collapse-link"><i class="fa fa-chevron-down"></i></a>
                          </li>
                        </ul>
                        <div class="clearfix"></div>
                      </div>

                      <div class="x_content">

                        <div class="table-responsive">
                          <table class="table table-striped jambo_table" name="addList">
                            <thead>
                              <tr class="headings">
                                <th>
                                  체크
                                </th>
                                <th class="column-title">회사명 </th>
                                <th class="column-title">사업명 </th>
                                <th class="column-title">확인자 </th>
                                <th class="column-title">확인자 연락처 </th>
                                <th class="column-title">사업시작일 </th>
                                <th class="column-title">사업종료일 </th>
                                <th class="column-title">등록일 </th>
                              </tr>
                            </thead>

                            <tbody>
                            </tbody>
                          </table>
                        </div>
                  </div>
                </div>
              </div>
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title" style="display: flex;justify-content: center">
                    <h2>3. 경력 정보 입력 </h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    

                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="dept">부서 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="dept" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="dept" required="required" type="text">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="task">담당업무 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="task" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="task" required="required" type="text">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="spot">직위 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="spot" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="spot" required="required" type="text">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="taskStartDate">직무시작일 <span class="required">*</span>
                        </label>
                        <!--cal01-->
                        <div class="col-md-6 col-sm-6 col-xs-12">
                              <div class='input-group date' id='myDatepicker1'>
									<input type='text' class="form-control" name="task_start_date"/>
									<span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                            </div>
                           </div>
                     
                      </div>
                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="taskEndDate">직무 종료일<span class="required">*</span>
                        </label>
                        
                        <div class="col-md-6 col-sm-6 col-xs-12">
                           <div class='input-group date' id='myDatepicker2'>
									<input type='text' class="form-control" name="task_end_date"/>
									<span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                            </div>
                            
                           </div>
                      </div>
                      
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3" style="display: flex;justify-content: center">
                          <input id="send" type="button" class="btn btn-success" value="등록하기">
                          <input type="button" class="btn btn-primary" value="취소하기">
                        </div>
                      </div>
                  </div>
                </div>
            </div>
          </form>
          </div>
            </div>
            <script type="text/javascript">
            	 window.onload = function(){
    	$( "#searchStr" ).autocomplete({ 
            source: function(request, response) {
                  $.ajax({
                    url: "search_BusiName.do",
                    method: "POST",
                    type: "json",
                   data: { searchStr: request.term},                   // --> @RequestParam("searchStr") String searchStr abc
                      success: function (data) {
                         response($.map(data, function (item) {
                             return { label:item.busiName, value:item.busiName };
                         }))
                     },
                    error: function (e) {
                       $("#result-div").text(e.responseText);
                       console.log("ERROR : ", e);
                     }
                  });
              },
             minLength: 2, 
            select: function (event, ui) {
             }
         });
        $("#searchBtn").click(function(){
           var comName = $("#searchStr").val();
           $.ajax({
                url: "comSearch.do",
                method: "POST",
                type: "json",
             data: { comName: comName},  
                  success: function (data) {
                	  alert('조회되었습니다.');
                	  $("tbody").html("");
                     var userHtml = "";       
                      $.each(data, function(i,item){
                           userHtml = userHtml + "<tr class='even pointer'>";
                           userHtml = userHtml + "<td class='a-center '>";
                           userHtml = userHtml + '<input type="radio" name="busi_seq" class="flat" value="'+item.busi_seq+'">';
                           userHtml = userHtml + "</td>";
                           userHtml = userHtml + "<td>"+item.comName+"</td>";
                           userHtml = userHtml + "<td>"+item.busiName+"</td>";
                           userHtml = userHtml + "<td>"+item.chkUser+"</td>";
                           userHtml = userHtml + "<td>"+item.chkTel+"</td>";
                           userHtml = userHtml + "<td>"+item.busiStartDate+"</td>";
                           userHtml = userHtml + "<td>"+item.busiEndDate+"</td>";
                           userHtml = userHtml + "<td>"+item.regDate+"</td>";
                           userHtml = userHtml + "</tr>";
                    });  
                     $("tbody").html(userHtml);
                     $('input.flat').iCheck({
                         checkboxClass: 'icheckbox_flat-green',
                         radioClass: 'iradio_flat-green'
                     });
                },
                error: function (e) {
                    console.log("ERROR : ", e);
                }
            });

        });
       $('#send').click(function(){
    	   if(!$('input[name=busi_seq]:checked').val()){
    		   alert('사업은 선택해주세요.');
    	   	   return false;
    	   }
    	   document.getElementById('form').submit();
       });
 		$('#myDatepicker2').datetimepicker({
 	        format: 'YYYY/MM/DD'
 	    });
 		$('#myDatepicker1').datetimepicker({
 	        format: 'YYYY/MM/DD'
 	    });
     };
    </script>
            
