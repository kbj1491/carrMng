<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
            <div class="">
             <div class="page-title">
              <div class="title_left">
                <h3>Career Manage</h3>
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
                        <h2>Career List </h2>
                        <ul class="nav navbar-right panel_toolbox">
                          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                          </li>
                        </ul>
                        <div class="clearfix"></div>
                      </div>

                      <div class="x_content">

                        <p>날짜별 사업별 경력 리스트</p>

                        <div class="table-responsive">
                          <table class="table table-striped jambo_table">
                            <thead>
                              <tr class="headings">
                                <th class="column-title">사업명 </th>
                                <th class="column-title">확인자 </th>
                                <th class="column-title">확인자 연락처 </th>
                                <th class="column-title">등록일 </th>
                                <th class="column-title">등록 인원 </th>
                                <th class="column-title no-link last"><span class="nobr">자세히보기</span>
                                </th>
                              </tr>
                            </thead>

                            <tbody>
                              <c:forEach var="cvo" items="${carrList}" varStatus="status">
                			    <c:choose>
								    <c:when test="${status.count%2 eq 0}">
						                <tr class="odd pointer">
								    </c:when>
								    <c:when test="${status.count%2 eq 1}">
										<tr class="even pointer">
								    </c:when>
								</c:choose>
				                	<td>${cvo.busiName}</td>
				                	<td>${cvo.chkUser}</td>
				                	<td>${cvo.chkTel}</td>
				                	<td>${cvo.carrRegDate}</td>
				                	<td>${cvo.totalUser}</td>
				                	<td><a href="<%=request.getContextPath()%>/carr/comCarrDetail.do?carrRegDate=${cvo.carrRegDate}">Detail</a></td>
				                </tr>
				               </c:forEach>
                            </tbody>
                          </table>
                          <input type="submit" class="btn btn-primary" value="경력 추가">
                        </div>
					</div>	
                  </div>
                </div>
              </div>
