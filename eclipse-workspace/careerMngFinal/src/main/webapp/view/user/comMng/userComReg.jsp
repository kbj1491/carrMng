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
                 <div class="col-md-12 col-sm-12 col-xs-12">
                  <div class="x_panel">
                     <div class="x_content">
                      
                     <form class="form-horizontal form-label-left" action="/served/comInsert.do" method="post" novalidate>
                            <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">회사명<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="input-group">
                            <input type="text" class="form-control col-md-7 col-xs-12">
                            <span class="input-group-btn">
                             <button type="button" class="btn btn-primary"
                             class="panel-heading collapsed" role="tab" id="headingTwo" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">검색</button>
                             </span>
                          </div>
                        </div>
                       </div>

                        <div class="item form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12"
                              for="website">부서<span class="required">*</span>
                           </label>
                           <div class="col-md-6 col-sm-6 col-xs-12">
                              <input id="occupation" class="form-control col-md-7 col-xs-12"
                                 data-validate-length-range="6" data-validate-words="2"
                                 name="name" required="required" type="text">
                           </div>
                        </div>
                        <div class="item form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12"
                              for="number">담당업무<span class="required">*</span>
                           </label>
                           <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="number" name="number"
                                 required="required" class="form-control col-md-7 col-xs-12">
                           </div>
                        </div>
                        <div class="item form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12"
                              for="website">직급<span class="required">*</span>
                           </label>
                           <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="occupation" name="occupation"
                                 required="required"
                                 class="form-control col-md-7 col-xs-12">
                           </div>
                        </div>
                        
                        <div class="item form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12">근무시작일<span
                              class="required">*</span>
                           </label>
                           <div class="col-md-6 col-sm-6 col-xs-12">
                              <div class="form-group">
                                 <div class='input-group date' id='businessStartDt'>
                                    <input type='text' class="form-control" /> <span
                                       class="input-group-addon"> <span
                                       class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="item form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12">근무종료일
                           </label>
                           <div class="col-md-6 col-sm-6 col-xs-12">
                              <div class="form-group">
                                 <div class='input-group date' id='businessEndDt'>
                                    <input type='text' class="form-control" /> <span
                                       class="input-group-addon"> <span
                                       class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                 </div>
                              </div>
                           </div>
                      
                        </div>
                        <div class="form-group">
                           <div class="col-md-6 col-md-offset-3" align="center">
                             <a href="<%=request.getContextPath()%>/served/servedComList.do"><input type="button" class="btn btn-primary" value="취소하기"></a>
                              <button id="send" type="submit" class="btn btn-success">등록하기</button>
                           </div>
                        </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>