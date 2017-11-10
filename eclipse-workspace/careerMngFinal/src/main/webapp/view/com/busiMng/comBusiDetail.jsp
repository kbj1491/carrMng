<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="">
             <div class="page-title">
              <div class="title_left">
                <h3>Busi Detail</h3>
              </div>
             </div>
            </div>
            
            <div class="clearfix"></div>
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
                                <th class="column-title">담당자 </th>
                                <th class="column-title">담당자 부서 </th>
                                <th class="column-title">담당자 연락처</th>
                                <th class="column-title">사업등록일 </th>
                                <th class="bulk-actions" colspan="7">
                                  <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                                </th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr class="even pointer">
                                <td class=" "><c:out value="${busiInfo.busi_name} "/></td>
                                <td class=" "> <c:out value="${busiInfo.busi_start_date} "/></td>
                                <td class=" "><c:out value="${busiInfo.busi_end_date} "/></td>
                                <td class=" "> <c:out value="${busiInfo.busi_chk_user} "/></td>
                                <td class=" "> <c:out value="${busiInfo.busi_chk_dept} "/></td>
                                <td class=" "> <c:out value="${busiInfo.busi_chk_tel} "/></td>
                                <td class=" "><c:out value="${busiInfo.busi_reg_date} "/></td>
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
                        <h2>등록 사원 </h2>
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
                                <th class="column-title">번호 </th>
                                <th class="column-title">사원명 </th>
                                <th class="column-title">사원번호 </th>
                                <th class="column-title">담당업무 </th>
                                <th class="column-title">부서 </th>
                                <th class="column-title">직위 </th>
                                <th class="column-title">시작일 </th>
                                <th class="column-title">종료일 </th>
                                <th class="column-title">승인일 </th>
                              </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="busiInfo" items="${busiDetail}" varStatus="status">
                              <tr class="even pointer">
                                <td class=" "><c:out value="${status.count}"/></td>
                                <td class=" "><c:out value="${busiInfo.busi_name}"/></td>
                                <td class=" "><c:out value="${busiInfo.com_num}"/></td>
                                <td class=" "><c:out value="${busiInfo.count}"/></td>
                                <td class=" "><c:out value="${busiInfo.count}"/></td>
                                <td class=" "><c:out value="${busiInfo.count}"/></td>
                                <td class=" "><c:out value="${busiInfo.busi_start_date}"/></td>
                                <td class=" "><c:out value="${busiInfo.busi_end_date}"/></td>
                                <td class=" "><c:out value="TODO vo부터"/></td>
                              </tr>
							</c:forEach>
                            </tbody>
                          </table>
                              <br> <a href="${pageContext.request.contextPath }/busi/busiList.do" class="btn btn-success btn-xs" style="float:right;"><i
					class="fa fa-share"></i> 이전화면</a>
                        </div>
					</div>	
                  </div>
                </div>
              </div>