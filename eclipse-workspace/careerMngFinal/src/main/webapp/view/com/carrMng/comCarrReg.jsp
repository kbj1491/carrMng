<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                        <h2>사업리스트 </h2>
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
                                  <input type="checkbox" id="check-all" class="flat">
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
                              <tr class="even pointer">
                                <td class="a-center ">
                                  <input type="radio" name="busi_seq" value="1" class="flat" name="table_records">
                                </td>
                                <td class=" ">경력관리 플렛폼 구축 </td>
                                <td class=" ">김보성 </td>
                                <td class=" ">010-4467-1491 </td>
                                <td class=" ">17/09/01 </td>
                                <td class=" ">17/10/01 </td>
                                <td class=" ">17/10/02 </td>
                              </tr>
                              <tr class="odd pointer">
                                <td class="a-center ">
                                  <input type="radio" name="busi_seq" class="flat" name="table_records">
                                </td>
                                <td class=" ">경력관리 플렛폼 구축 </td>
                                <td class=" ">김보성 </td>
                                <td class=" ">010-4467-1491 </td>
                                <td class=" ">17/09/01 </td>
                                <td class=" ">17/10/01 </td>
                                <td class=" ">17/10/02 </td>
                              </tr>
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
                          <table class="table table-striped jambo_table">
                            <thead>
                              <tr class="headings">
                                <th>
                                  <input type="checkbox" id="check-all" class="flat">
                                </th>
                                <th class="column-title">번호 </th>
                                <th class="column-title">사원명 </th>
                                <th class="column-title">사원번호 </th>
                                <th class="column-title">담당업무 </th>
                                <th class="column-title">부서 </th>
                                <th class="column-title">직위 </th>
                                <th class="column-title">근무시작일 </th>
                                <th class="column-title">근무종료일 </th>
                              </tr>
                            </thead>

                            <tbody>
                              <tr class="even pointer">
                                <td class="a-center ">
                                  <input type="checkbox" class="flat" name="table_records">
                                </td>
                                <td class=" ">1 </td>
                                <td class=" ">김보성 </td>
                                <td class=" ">1 </td>
                                <td class=" ">개발설계 </td>
                                <td class=" ">개발팀 </td>
                                <td class=" ">과장 </td>
                                <td class=" ">17/09/01 </td>
                                <td class=" ">17/10/01 </td>
                              </tr>
                              <tr class="odd pointer">
                                <td class="a-center ">
                                  <input type="checkbox" class="flat" name="table_records">
                                </td>
                                <td class=" ">1 </td>
                                <td class=" ">김보성 </td>
                                <td class=" ">1 </td>
                                <td class=" ">개발설계 </td>
                                <td class=" ">개발팀 </td>
                                <td class=" ">과장 </td>
                                <td class=" ">17/09/01 </td>
                                <td class=" ">17/10/01 </td>
                              </tr>
                              <tr>
			                  	<td><input type="checkbox" class="flat" name="carrList[0].user_seq" value="1"></td>
			                  	<td>2</td>
			                 	<td>김보성</td>
			                  	<td>1</td>
			                	<td><input type="text" name="carrList[0].task" value="담당업무" style="width:80px;"></td>
			                    <td><input type="text" name="carrList[0].dept" value="개발팀" style="width:80px;"></td>
			                    <td><input type="text" name="carrList[0].spot" value="과장" style="width:80px;"></td>
			                    <td><input type="text" name="carrList[0].taskStartDate" value="2017/09/01" style="width:80px;"></td>
			                    <td><input type="text" name="carrList[0].taskEndDate" value="2017/10/22" style="width:80px;"></td>
			                 </tr>
			                 <tr>
			                  	<td><input type="checkbox" class="flat" name="carrList[1].user_seq" value="1"></td>
			                  	<td>2</td>
			                 	<td>김보성</td>
			                  	<td>1</td>
			                	<td><input type="text" name="carrList[1].task" value="담당업무" style="width:80px;"></td>
			                    <td><input type="text" name="carrList[1].dept" value="개발팀" style="width:80px;"></td>
			                    <td><input type="text" name="carrList[1].spot" value="과장" style="width:80px;"></td>
			                    <td><input type="text" name="carrList[1].taskStartDate" value="2017/09/01" style="width:80px;"></td>
			                    <td><input type="text" name="carrList[1].taskEndDate" value="2017/10/22" style="width:80px;"></td>
			                 </tr>
                            </tbody>
                          </table>
                          <div class="pull-left">
                          <input type="button" class="btn btn-primary" value="사원추가"></div>
                          <div class="pull-right">
                          <input type="button" class="btn btn-primary" value="선택삭제"><input type="submit" class="btn btn-primary" value="경력 추가"></div>
                        </div>
                    </div>
                  </div>
                </div>
    </form>
    