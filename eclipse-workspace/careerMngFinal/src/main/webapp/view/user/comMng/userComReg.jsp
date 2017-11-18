<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <div class="">
            <div class="page-title" style="display: flex;justify-content: center">
              <div class="title_left" style="display: flex;justify-content: center">
                <h3>회사 추가하기</h3>
              </div>
             </div>
                <div class="clearfix"></div>
                 <div class="row" style="display: flex;justify-content: center;">
                 <div class="col-md-9 col-sm-12 col-xs-12">
                  <div class="x_panel">
                     <div class="x_content">
                      
                     <form class="form-horizontal form-label-left" action="/served/comInsert.do" id="form" name= "form" method="post" novalidate>
                            <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="comName">회사명<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="input-group">
                            <input type="hidden" id="com_seq" name="com_seq" value=""> <input type="text" name="comName" id="comName" class="form-control col-md-7 col-xs-12" onkeydown="if(event.keyCode == 13){searchCom()}">
                            <span class="input-group-btn">
                             <button type="button" class="btn btn-primary"
                             class="panel-heading collapsed" role="tab" id="headingTwo" onclick="searchCom()" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">조회</button>
                             </span>
                          </div>
                        </div>
                       </div>

                        <div class="item form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12"
                              for="dept">부서<span class="required">*</span>
                           </label>
                           <div class="col-md-6 col-sm-6 col-xs-12">
                              <input id="occupation" class="form-control col-md-7 col-xs-12"
                                 data-validate-length-range="6" data-validate-words="2"
                                 name="dept" required="required" type="text">
                           </div>
                        </div>
                        <div class="item form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12"
                              for="task">담당업무<span class="required">*</span>
                           </label>
                           <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="task" name="task"
                                 required="required" class="form-control col-md-7 col-xs-12">
                           </div>
                        </div>
                        <div class="item form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12"
                              for="spot">직급<span class="required">*</span>
                           </label>
                           <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="spot" name="spot"
                                 required="required"
                                 class="form-control col-md-7 col-xs-12">
                           </div>
                        </div>
                        
                        <div class="item form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12" for="task_start_date">근무시작일<span
                              class="required">*</span>
                           </label>
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
                           <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">근무종료일
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
                        <div class="form-group">
                           <div class="col-md-6 col-md-offset-3" align="center">
                             <a href="<%=request.getContextPath()%>/served/servedComList.do"><input type="button" class="btn btn-primary" value="취소하기"></a>
                              <button id="send" type="button" class="btn btn-success" onclick="submit();">등록하기</button>
                           </div>
                        </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      <script type="text/javascript">
      function submit(){
    	  document.getElementById('form').submit();
      }
      function searchCom(){
    	  var comName=$('#comName').val();
    	  var url = '<%=request.getContextPath()%>/served/searchComPopup/${UserImpo.seq}/.do';
    	  url +='?comName=' + comName;
    	  window.open(url,'window','width=650,height=450, scrollbars=yes,left=400,top=200')
      };
      function sendToComVO(comVO){
    	  $('#com_seq').val(comVO.com_seq);
    	  $('#comName').val(comVO.comName);
      };
      window.onload=function() {
    		$('#myDatepicker2').datetimepicker({
    	        format: 'YYYY/MM/DD'
    	    });
    		$('#myDatepicker1').datetimepicker({
    	        format: 'YYYY/MM/DD'
    	    });
    	};
      </script>