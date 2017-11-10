<%@ page pageEncoding="UTF-8"%>
   <div class="menu_section">
      <h3>General</h3>
      <ul class="nav side-menu">
        <li><a href="<%=request.getContextPath()%>/certi/comMain.do"><i class="fa fa-home"></i> Home </a>
        </li>
        <li><a><i class="fa fa-user"></i> 사원 관리 <span class="fa fa-chevron-down"></span></a>
          <ul class="nav child_menu">
            <li><a href="<%=request.getContextPath()%>/served/servedUserList.do">사원 목록</a></li>
            <li><a href="<%=request.getContextPath()%>/served/inputUser.do">사원 등록하기</a></li>
            <li><a href="<%=request.getContextPath()%>/served/comUserReqList.do">사원 요청 목록</a></li>
          </ul>
        </li>
        <li><a><i class="fa fa-file-text-o"></i> 경력 관리  <span class="fa fa-chevron-down"></span></a>
          <ul class="nav child_menu">
            <li><a href="<%=request.getContextPath()%>/carr/comCarrList.do">경력 리스트</a></li>
            <li><a href="<%=request.getContextPath()%>/carr/comCarrReg.do">경력 등록하기</a></li>
            <li><a href="<%=request.getContextPath()%>/carr/comCarrReq.do">경력 요청사항</a></li>
          </ul>
        </li>
          <li><a><i class="fa fa-bar-chart-o"></i> 사업 관리  <span class="fa fa-chevron-down"></span></a>
          <ul class="nav child_menu">
            <li><a href="<%=request.getContextPath()%>/busi/busiList.do">사업 리스트</a></li>
            <li><a href="<%=request.getContextPath()%>/busi/busiReg.do">사업 추가하기</a></li>
          </ul>
        </li>
         <li><a href="#"><i class="fa fa-paper-plane-o"></i> 구직 메뉴 </a>
        </li>
        <li><a href="#"><i class="fa fa-briefcase"></i> 공지사항 </a>
        </li>
      </ul>
    </div>
    <div class="menu_section">
      <h3>COMPANY</h3>
      <ul class="nav side-menu">
        <li><a href=""><i class="fa fa-users"></i> 회사 정보 </a>
        </li>
      </ul>
    </div>
    