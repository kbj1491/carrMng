<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
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
                        <h2>사업 정보 </h2>
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
                                <th class="column-title">사업명 </th>
                                <th class="column-title">사업시작일 </th>
                                <th class="column-title">사업종료일 </th>
                                <th class="column-title">사업등록일 </th>
                                <th class="column-title">상태</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr class="even pointer">
                                <td class=" ">${carrDetail.carrVO.busiName} </td>
                                <td class=" ">${carrDetail.carrVO.taskStartDate} </td>
                                <td class=" ">${carrDetail.carrVO.taskEndDate} </td>
                                <td class=" ">${carrDetail.carrVO.proofDate} </td>
                                <td class=" ">${carrDetail.carrVO.state} </td>
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
                          <table class="table table-striped jambo_table">
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
                                <th class="column-title">승인상태 </th>
                              </tr>
                            </thead>
                            <tbody>
                              <c:forEach var="cvo" items="${carrDetail.carrUserList}" varStatus="status">
                			    <c:choose>
								    <c:when test="${status.count%2 eq 0}">
						                <tr class="odd pointer">
								    </c:when>
								    <c:when test="${status.count%2 eq 1}">
										<tr class="even pointer">
								    </c:when>
								</c:choose>
				                	<td>${status.count}</td>
				                	<td>${cvo.userName}</td>
				                	<td>${cvo.user_seq}</td>
				                	<td>${cvo.task}</td>
				                	<td>${cvo.dept}</td>
				                	<td>${cvo.spot}</td>
				                	<td>${cvo.taskStartDate}</td>
				                	<td>${cvo.taskEndDate}</td>
				                	<td>${cvo.state}</td>
				                </tr>
				               </c:forEach>
                            </tbody>
                          </table>
                        </div>
					</div>	
                  </div>
                </div>
              </div>