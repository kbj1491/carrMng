<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="${pageContext.request.contextPath }/js/jquery-3.2.1.js"></script>
   
<div class="">
             <div class="page-title">
              <div class="title_left">
                <h3>사업 관리</h3>
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
              <div class="row" style="display: flex; justify-content: center">
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_content">
						<div class="x_title">
                        <h2>Business List </h2>
                        <div class="clearfix"></div>
                      </div>
                        <div class="table-responsive">
                          <table class="table table-striped jambo_table">
                            <thead>
                              <tr class="headings">
                                <th><input type="checkbox" class="flat" id="check-all"/></th>
                                <th class="column-title">번호 </th>
                                <th class="column-title">사업명 </th>
                                <th class="column-title">사업시작일 </th>
                                <th class="column-title">사업종료일 </th>
                                <th class="column-title">경력등록<br>총인원 </th>
                                <th class="column-title no-link last"><span class="nobr">수정</span>
                                <th class="column-title no-link last"><span class="nobr">삭제</span>
                              </tr>
                            </thead>

                            <tbody>
                            <c:forEach var="busiInfo" items="${busiList}" varStatus="status">
                              <tr class="even pointer">
                                <td class="a-center ">
                                  <input type="checkbox" class="flat" name="table_records" value="<c:out value="${busiInfo.busi_seq}"/>">
                                </td>
                                <td scope="row"><c:out value="${status.count}"/></td>
                                <td class=" "><a href="${pageContext.request.contextPath }/busi/busiDetail.do?busi_seq=<c:out value="${busiInfo.busi_seq}"/>"><c:out value="${busiInfo.busi_name}"/></a></td>
                                <td class=" "><c:out value="${busiInfo.busi_start_date}"/></td>
                                <td class=" "><c:out value="${busiInfo.busi_end_date}"/></td> 
                                <td class=" "><c:out value="0 명 TODO"/></td>
                                <td class=" "><a href="${pageContext.request.contextPath }/busi/busiDetailInfo.do?busi_seq=<c:out value="${busiInfo.busi_seq}"/>">수정</a></td>
                                <td class=" "><a href="${pageContext.request.contextPath }/busi/busiDelete.do?busi_seq=<c:out value="${busiInfo.busi_seq}"/>">삭제</a></td>
                              </tr>
                            </c:forEach>
                            </tbody>
                          </table>
                          <a href="<%=request.getContextPath()%>/busi/busiReg.do"><input type="button" class="btn btn-primary" value="사업 추가"></a>
                        </div>
					</div>
                </div>
              </div>
            </div>
                      
                      
         
         
    
          
