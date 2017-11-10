<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="dashboard_graph x_panel">
                  <div class="row x_title">
                    <div class="col-md-6">
                      <h3>나의 연도별 경력 등록 수 </h3>
                    </div>
                  </div>
                  <div class="x_content">
                    <div class="demo-container" style="height:250px">
                      <div id="chart_plot_03" class="demo-placeholder"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
               <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>알림 </h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <table class="table">
                      <tbody>
                        <tr>
                          <th scope="row">삼성</th>
                          <td><a href="">경력 승인</a></td>
                          <td>2019/09/06 15시3분</td>
                        </tr>
                        <tr>
                          <th scope="row">삼성</th>
                          <td><a href="">재직자 승인</a></td>
                          <td>2019/09/06 15시3분</td>
                        </tr>
                        <tr>
                          <th scope="row">삼성</th>
                          <td><a href="">경력 승인 요청</a></td>
                          <td>2019/09/06 15시3분</td>
                        </tr>
                      </tbody>
                    </table>

                  </div>
                </div>
              </div>
               <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>공지 사항 </h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <table class="table">
                      <tbody>
                        <tr>
                          <th scope="row"><a href="">가입을 환영합니다.</a></th>
                          <td>관리자</td>
                        </tr>
                        <tr>
                          <th scope="row"><a href="">이용 안내입니다.</a></th>
                          <td>관리자</td>
                        </tr>
                        <tr>
                          <th scope="row"><a href="">경력등록에러 수정되었습니다.</a></th>
                          <td>관리자</td>
                        </tr>
                      </tbody>
                    </table>

                  </div>
                </div>
              </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>오늘의 날씨정보 <small>기상청</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class="row">
                      <div class="col-sm-12">
                        <div class="temperature"><b>금요일 </b>, 2:30 PM
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-4">
                        <div class="weather-icon">
                          <span>
                                              <canvas height="84" width="84" id="partly-cloudy-day"></canvas>
                                          </span>

                        </div>
                      </div>
                      <div class="col-sm-8">
                        <div class="weather-text">
                          <h2>서울
                                              <br><i>구름 약간</i>
                                          </h2>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-12">
                      <div class="weather-text pull-right">
                        <h3 class="degrees">23</h3>
                      </div>
                    </div>
                    <div class="clearfix"></div>


                    <div class="row weather-days">
                      <div class="col-sm-2">
                        <div class="daily-weather">
                          <h2 class="day">Mon</h2>
                          <h3 class="degrees">25</h3>
                          <span>
                                                  <canvas id="clear-day" width="32" height="32">
                                                  </canvas>

                                          </span>
                          <h5>15
                                              <i>km/h</i>
                                          </h5>
                        </div>
                      </div>
                      <div class="col-sm-2">
                        <div class="daily-weather">
                          <h2 class="day">Tue</h2>
                          <h3 class="degrees">25</h3>
                          <canvas height="32" width="32" id="rain"></canvas>
                          <h5>12
                                              <i>km/h</i>
                                          </h5>
                        </div>
                      </div>
                      <div class="col-sm-2">
                        <div class="daily-weather">
                          <h2 class="day">Wed</h2>
                          <h3 class="degrees">27</h3>
                          <canvas height="32" width="32" id="snow"></canvas>
                          <h5>14
                                              <i>km/h</i>
                                          </h5>
                        </div>
                      </div>
                      <div class="col-sm-2">
                        <div class="daily-weather">
                          <h2 class="day">Thu</h2>
                          <h3 class="degrees">28</h3>
                          <canvas height="32" width="32" id="sleet"></canvas>
                          <h5>15
                                              <i>km/h</i>
                                          </h5>
                        </div>
                      </div>
                      <div class="col-sm-2">
                        <div class="daily-weather">
                          <h2 class="day">Fri</h2>
                          <h3 class="degrees">28</h3>
                          <canvas height="32" width="32" id="wind"></canvas>
                          <h5>11
                                              <i>km/h</i>
                                          </h5>
                        </div>
                      </div>
                      <div class="col-sm-2">
                        <div class="daily-weather">
                          <h2 class="day">Sat</h2>
                          <h3 class="degrees">26</h3>
                          <canvas height="32" width="32" id="cloudy"></canvas>
                          <h5>10
                                              <i>km/h</i>
                                          </h5>
                        </div>
                      </div>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                </div>

              </div>
            </div>
