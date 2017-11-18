<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <div class="">
             <div class="page-title">
              <div class="title_left">
                <h3>경력 요청사항</h3>
              </div>

             </div>
            </div>
            
            <div class="clearfix"></div>
              <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>회사 경력 요청 리스트 </h2>
                        <ul class="nav navbar-right panel_toolbox">
                          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                          </li>
                        </ul>
                        <div class="clearfix"></div>
                      </div>

                      <div class="x_content">
                        <div class="table-responsive">
                        <form action="/carr/carrUserAgre.do" method="post" name="form" id="form">
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
                                <th class="column-title">업무기간 </th>
                                <th class="column-title">등록일 </th>
                                <th class="column-title">상태 </th>
                                <th class="column-title no-link last"><span class="nobr">자세히보기</span>
                                </th>
                              </tr>
                            </thead>

                            <tbody>
                              <c:forEach var="cvo" items="${carrReq.comReq}" varStatus="status">
                				  <c:choose>
								    <c:when test="${status.count%2 eq 0}">
						                <tr class="odd pointer">
								    </c:when>
								    <c:when test="${status.count%2 eq 1}">
										<tr class="even pointer">
								    </c:when>
								</c:choose>
								<td class="a-center ">
                                  <input type="checkbox" class="flat" name="carr_seq" value="${cvo.carr_seq}">
                                </td>
					                <td>${cvo.comName}</td>
					                <td>${cvo.busiName}</td>
				                	<td>${cvo.task}</td>
					                <td>${cvo.dept}</td>
					                <td>${cvo.spot}</td>
					                <td>${cvo.taskStartDate} ~ ${cvo.taskEndDate}</td>
					                <td>${cvo.proofDate}</td>
					                <td>${cvo.state}
				                	<td><a href="<%=request.getContextPath()%>/carr/carrComReqDetail.do?carr_seq=${cvo.carr_seq}">Detail</a></td>
				                </tr>
				               </c:forEach>
                            </tbody>
                          </table>
                          <input type="button" onclick="agreUser()" class="btn btn-primary" value="경력 승인">
                        </form>
                        </div>
					</div>	
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>나의 경력 요청 리스트 </h2>
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
                                <th class="column-title">회사명 </th>
                                <th class="column-title">사업명 </th>
                                <th class="column-title">담당업무 </th>
                                <th class="column-title">부서 </th>
                                <th class="column-title">직위 </th>
                                <th class="column-title">업무기간 </th>
                                <th class="column-title">등록일 </th>
                                <th class="column-title">상태 </th>
                                <th class="column-title no-link last"><span class="nobr">자세히보기</span>
                                </th>
                              </tr>
                            </thead>

                            <tbody>
                               <c:forEach var="cvo" items="${carrReq.userReq}" varStatus="status">
				                <c:choose>
								    <c:when test="${status.count%2 eq 0}">
						                <tr class="odd pointer">
								    </c:when>
								    <c:when test="${status.count%2 eq 1}">
										<tr class="even pointer">
								    </c:when>
								</c:choose>
									<td>${status.count }</td>
					                <td>${cvo.comName}</td>
					                <td>${cvo.busiName}</td>
				                	<td>${cvo.task}</td>
					                <td>${cvo.dept}</td>
					                <td>${cvo.spot}</td>
					                <td>${cvo.taskStartDate} ~ ${cvo.taskEndDate}</td>
					                <td>${cvo.proofDate}</td>
					                <td>${cvo.state}</td>
					                <td><a href="<%=request.getContextPath()%>/carr/carrUserReqDetail.do?carr_seq=${cvo.carr_seq}">Detail</a></td>
				                </tr>
				               </c:forEach>
                            </tbody>
                          </table>
                        </div>
					</div>	
                  </div>
                </div>
              </div>
    <script type="text/javascript">
    function agreUser(){
    	if(confirm('경력을 승인하시겠습니까?')==true){
    	document.getElementById('form').submit();
    }
    }
    </script>
