<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                    <h2>회사 미승인리스트 </h2>
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
                            <th class="column-title">사원명 </th>
                            <th class="column-title">사원<br>번호 </th>
                            <th class="column-title">연락처 </th>
                            <th class="column-title">부서 </th>
                            <th class="column-title">담당<br>업무 </th>
                            <th class="column-title">직급 </th>
                            <th class="column-title">근무기간 </th>
                            <th class="column-title">요청일</th>
                            <th class="column-title">승인<br>상태 </th>
                          </tr>
                        </thead>

                        <tbody>
                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">김보성 </td>
                            <td class=" ">1 </td>
                            <td class=" ">01044671491</td>
                            <td class=" ">인사</td>
                            <td class=" ">개발</td>
                            <td class=" ">부장</td>
                            <td class=" ">2017/09~</td>
                            <td class=" ">2017/09</td>
                            <td class=" ">승인대기</td>
                          </tr>
                          <tr class="odd pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">김보성 </td>
                            <td class=" ">1 </td>
                            <td class=" ">01044671491</td>
                            <td class=" ">인사</td>
                            <td class=" ">개발</td>
                            <td class=" ">부장</td>
                            <td class=" ">2017/09~</td>
                            <td class=" ">2017/09</td>
                            <td class=" ">승인대기</td>
                          </tr>
                        </tbody>
                      </table>
                       <a href="#" class="btn btn-success btn-xs"><i class="fa fa-share"></i> 요청승인 </a>
                     <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-check-square-o"></i> 요청거절 </a>
                    </div>
                  </div>
                </div>
              </div>
              
              <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title" style="display:flex; justify-content: center;">
                    <h2>개인 미승인리스트 </h2>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">
                    <div class="table-responsive">
                      <table class="table table-striped jambo_table">
                        <thead>
                          <tr class="headings">
                            <th class="column-title">번호 </th>
                            <th class="column-title">사원명 </th>
                            <th class="column-title">사원<br>번호 </th>
                            <th class="column-title">연락처 </th>
                            <th class="column-title">부서 </th>
                            <th class="column-title">담당<br>업무 </th>
                            <th class="column-title">직급 </th>
                            <th class="column-title">근무<br>기간 </th>
                            <th class="column-title">요청일 </th>
                            <th class="column-title">승인<br>상태 </th>
                          </tr>
                        </thead>

                        <tbody>
                          <tr class="even pointer">
                            <td class=" ">1</td>
                            <td class=" ">김보성 </td>
                            <td class=" ">1 </td>
                            <td class=" ">01044671491</td>
                            <td class=" ">인사</td>
                            <td class=" ">개발</td>
                            <td class=" ">부장</td>
                            <td class=" ">2017/09~</td>
                            <td class=" ">2017/09</td>
                            <td class=" ">승인대기</td>
                          </tr>
                          <tr class="odd pointer">
                            <td class=" ">1</td>
                            <td class=" ">김보성 </td>
                            <td class=" ">1 </td>
                            <td class=" ">01044671491</td>
                            <td class=" ">인사</td>
                            <td class=" ">개발</td>
                            <td class=" ">부장</td>
                            <td class=" ">2017/09~</td>
                            <td class=" ">2017/09</td>
                            <td class=" ">승인대기</td>
                          </tr>
                        </tbody>
                      </table>
                     </div>
                  </div>
                </div>
              </div>
            </div>