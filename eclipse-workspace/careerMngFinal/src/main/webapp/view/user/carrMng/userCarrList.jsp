<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form action="/carr/carrPreview.do" name="carrMng" method="post">
            <div class="">
             <div class="page-title">
              <div class="title_left">
                <h3>경력 관리</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
             </div>
            </div>
            
            <div class="clearfix"></div>
              <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>경력 리스트 </h2>
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
                                <th class="column-title">회사명 </th>
                                <th class="column-title">사업명 </th>
                                <th class="column-title">담당업무 </th>
                                <th class="column-title">부서 </th>
                                <th class="column-title">직위 </th>
                                <th class="column-title">근무기간 </th>
                                <th class="column-title">승인일 </th>
                                <th class="column-title no-link last"><span class="nobr">자세히보기</span>
                                </th>
                              </tr>
                            </thead>

                            <tbody>
                              <c:forEach var="carrVO" items="${carrList}" varStatus="status">
				                <c:choose>
								    <c:when test="${status.count%2 eq 0}">
						                <tr class="odd pointer">
								    </c:when>
								    <c:when test="${status.count%2 eq 1}">
										<tr class="even pointer">
								    </c:when>
								</c:choose>
								<td class="a-center ">
                                  <input type="checkbox" class="flat" name="carr_seq" value="${carrVO.carr_seq}">
                                </td>
				                	<td>${carrVO.comName}</td>
				                	<td>${carrVO.busiName}</td>
				                	<td>${carrVO.task}</td>
				                	<td>${carrVO.dept}</td>
				                	<td>${carrVO.spot}</td>
				                	<td>${carrVO.taskStartDate} ~ ${carrVO.taskEndDate}</td>
				                	<td>${carrVO.proofDate}</td>
				                	<td><a href="<%=request.getContextPath()%>/carr/carrDetail.do?carr_seq=${carrVO.carr_seq}">Detail</a></td>
				                </tr>
				               </c:forEach>
                            </tbody>
                          </table>
                          <input type="submit" class="btn btn-primary" value="경력 출력 미리보기">
                        </div>
					</div>	
                  </div>
                </div>
              </div>
              </form>
