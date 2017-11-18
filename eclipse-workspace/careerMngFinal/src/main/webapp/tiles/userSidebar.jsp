<%@ page pageEncoding="UTF-8"%>
   <div class="menu_section">
        <h3>General</h3>
        <ul class="nav side-menu">
          <li><a href="<%=request.getContextPath()%>/certi/userMain.do"><i class="fa fa-home"></i> Home </a>
          </li>
          <li><a><i class="fa fa-user"></i> 재직 회사 관리 <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
              <li><a href="<%=request.getContextPath()%>/served/servedComList.do">재직 회사 목록</a></li>
              <li><a href="<%=request.getContextPath()%>/served/comDirectUserReg.do">회사 등록하기</a></li>
              <li><a href="<%=request.getContextPath()%>/served/comReqMng.do">회사 요청사항</a></li>
            </ul>
          </li>
          <li><a><i class="fa fa-file-text-o"></i> 경력 관리  <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
              <li><a href="<%=request.getContextPath()%>/carr/userCarrList.do">경력 목록</a></li>
              <li><a href="<%=request.getContextPath()%>/carr/userCarrReg.do">경력 추가하기</a></li>
              <li><a href="<%=request.getContextPath()%>/carr/userCarrReqList.do">경력 요청사항</a></li>
            </ul>
          </li>
           <li><a href="#"><i class="fa fa-paper-plane-o"></i> 구인 메뉴 </a>
          </li>
         <li><a href="#"><i class="fa fa-briefcase"></i> 공지사항 </a>
        </li>
        </ul>
      </div>
      <div class="menu_section">
        <h3>USER</h3>
        <ul class="nav side-menu">
          <li><a><i class="fa fa-user"></i> 개인정보 </a>
          </li>
        </ul>
      </div>