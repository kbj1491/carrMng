<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="">
             <div class="page-title">
              <div class="title_left">
                <h3>Career Detail</h3>
              </div>
             </div>
            </div>
            
            <div class="clearfix"></div>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>회사 정보 </h2>
                        <ul class="nav navbar-right panel_toolbox">
                          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                          </li>
                        </ul>
                        <div class="clearfix"></div>
                      </div>

                      <div class="x_content">

                        <div class="table-responsive">
                          <table class="table table-striped jambo_table bulk_action">
                            <thead>
                              <tr class="headings">
                                <th class="column-title">회사명 </th>
                                <th class="column-title">사업자등록번호 </th>
                                <th class="column-title">소재지 </th>
                                <th class="column-title">전화 </th>
                                <th class="column-title">담당자 </th>
                                <th class="column-title">부서 </th>
                                <th class="column-title">연락처 </th>
                                
                              </tr>
                            </thead>
                            <tbody>
                              <tr class="even pointer">
                                <td class=" ">${carrVO.comName}</td>
                                <td class=" ">${carrVO.comNum}</td>
                                <td class=" ">${carrVO.comAddr}</td>
                                <td class=" ">${carrVO.comTel}</td>
                                <td class=" ">${carrVO.chkUser}</td>
                                <td class=" ">${carrVO.chkDept}</td>
                                <td class=" ">${carrVO.chkTel}</td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
					</div>	
                  </div>
                </div>
              </div>
             <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>사업 정보 </h2>
                        <ul class="nav navbar-right panel_toolbox">
                          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                          </li>
                        </ul>
                        <div class="clearfix"></div>
                      </div>

                      <div class="x_content">

                        <div class="table-responsive">
                          <table class="table table-striped jambo_table bulk_action">
                            <thead>
                              <tr class="headings">
                                <th class="column-title">사업명 </th>
                                <th class="column-title">사업시작일 </th>
                                <th class="column-title">사업종료일 </th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr class="even pointer">
                                <td class=" ">${carrVO.busiName} </td>
                                <td class=" ">${carrVO.busiStartDate} </td>
                                <td class=" ">${carrVO.busiEndDate} </td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
					</div>	
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>나의정보  </h2>
                        <ul class="nav navbar-right panel_toolbox">
                          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                          </li>
                        </ul>
                        <div class="clearfix"></div>
                      </div>

                      <div class="x_content">

                        <div class="table-responsive">
                          <table class="table table-striped jambo_table bulk_action">
                            <thead>
                              <tr class="headings">
                                <th class="column-title">담당업무 </th>
                                <th class="column-title">부서 </th>
                                <th class="column-title">직위 </th>
                                <th class="column-title">시작일 </th>
                                <th class="column-title">종료일 </th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr class="even pointer">
                                <td class=" ">${carrVO.task} </td>
                                <td class=" ">${carrVO.dept} </td>
                                <td class=" ">${carrVO.spot} </td>
                                <td class=" ">${carrVO.taskStartDate} </td>
                                <td class=" ">${carrVO.taskEndDate} </td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                        <input type="button" class="btn btn-primary" value="경력증명서 출력">
					</div>	
                  </div>
                </div>
              </div>