<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <div class="page-title" style="display: flex; justify-content: center;">
              <div class="title_left">
                <h3 style="text-align: center">미승인리스트 </h3>
              </div>
            </div>

            <div class="clearfix"></div>
            <div class="row">
            <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title" style="display: flex; justify-content: center;">
                    <h2>나의 미승인리스트 </h2>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">
                    <div class="table-responsive">
                    <form action="/served/agreServedUser.do" method="post" name="form" id="form">
                      <table class="table table-striped jambo_table">
                        <thead>
                          <tr class="headings">
                            <th>
                              <input type="checkbox" id="check-all" class="flat">
                            </th>
                            <th>회사명</th>
                          <th>사업자등록번호</th>
                          <th>연락처</th>
                          <th>부서</th>
                          <th>담당업무</th>
                          <th>직급</th>        
                          <th>근무기간</th>  
                          <th>요청일</th>
                          <th>승인상태</th>
                          </tr>
                        </thead>

                        <tbody>
                          <c:forEach var="ServedVO" items="${servedList.comReq}" varStatus="status">
				                <c:choose>
								    <c:when test="${status.count%2 eq 0}">
						                <tr class="odd pointer">
								    </c:when>
								    <c:when test="${status.count%2 eq 1}">
										<tr class="even pointer">
								    </c:when>
								</c:choose>
                                    <td scope="row"><input type="checkbox" class="flat" name="seq" value="${ServedVO.seq}"></td>
				                	<td>${ServedVO.comName}</td>
				                	<td>${ServedVO.comNum}</td>
				                	<td>${ServedVO.comTel}</td>
				                	<td>${ServedVO.dept}</td>
				                	<td>${ServedVO.task}</td>
				                	<td>${ServedVO.spot}</td>
				                	<td>${ServedVO.task_start_date}~${ServedVO.task_end_date}</td>
				                	<td>${ServedVO.reg_date}</td>
				                	<td>${ServedVO.state}</td>
				                </tr>
				               </c:forEach>
                        </tbody>
                      </table>
                       <a href="#" class="btn btn-success btn-xs" onclick="agreUser()"><i class="fa fa-share"></i> 요청승인 </a>
                     <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-check-square-o"></i> 요청거절 </a>
                   </form>
                    </div>
                  </div>
                </div>
              </div>
              
              <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title" style="display:flex; justify-content: center;">
                    <h2>회사 미승인리스트 </h2>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">
                    <div class="table-responsive">
                    
                      <table class="table table-striped jambo_table">
                        <thead>
                          <tr class="headings">
                            <th class="column-title">번호 </th>
                            <th class="column-title">회사명 </th>
                            <th class="column-title">사업자등록번호 </th>
                            <th class="column-title">연락처 </th>
                            <th class="column-title">부서 </th>
                            <th class="column-title">담당업무 </th>
                            <th class="column-title">직급 </th>
                            <th class="column-title">근무기간 </th>
                            <th class="column-title">요청일 </th>
                            <th class="column-title">승인상태 </th>
                          </tr>
                        </thead>

                        <tbody>
                          <c:forEach var="ServedVO" items="${servedList.userReq}" varStatus="status">
				                <c:choose>
								    <c:when test="${status.count%2 eq 0}">
						                <tr class="odd pointer">
								    </c:when>
								    <c:when test="${status.count%2 eq 1}">
										<tr class="even pointer">
								    </c:when>
								</c:choose>
                                    <td scope="row">${status.count}</td>
				                	<td>${ServedVO.comName}</td>
				                	<td>${ServedVO.comNum}</td>
				                	<td>${ServedVO.comTel}</td>
				                	<td>${ServedVO.dept}</td>
				                	<td>${ServedVO.task}</td>
				                	<td>${ServedVO.spot}</td>
				                	<td>${ServedVO.task_start_date}~${ServedVO.task_end_date}</td>
                                    <td>${ServedVO.reg_date }</td>
                                    <td>${ServedVO.state}</td>				                	
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