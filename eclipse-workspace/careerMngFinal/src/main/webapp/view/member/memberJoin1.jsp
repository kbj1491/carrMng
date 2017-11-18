<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
body {
  background: #fff;
  font-size: 62.5%;
}

button, button::after {
  -webkit-transition: all 0.3s;
    -moz-transition: all 0.3s;
  -o-transition: all 0.3s;
    transition: all 0.3s;
}

button {
  background: none;
  border: 3px solid #2962ff;
  border-radius: 5px;
  color: #2962ff;
  display: block;
  font-size: 1.6em;
  font-weight: bold;
  margin: 1em auto;
  padding: 2em 6em;
  position: relative;
  text-transform: uppercase;
}

button::before,
button::after {
  background: #2962ff; /* Old browsers */
  background: -moz-linear-gradient(45deg, #2962ff 0%, #00bfa5 100%); /* FF3.6-15 */
  background: -webkit-linear-gradient(45deg, #2962ff 0%,#00bfa5 100%); /* Chrome10-25,Safari5.1-6 */
  background: linear-gradient(45deg, #2962ff 0%,#00bfa5 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2962ff', endColorstr='#00bfa5',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
  content: '';
  position: absolute;
  z-index: -1;
}
.btn-1{
cursor:pointer;
}

button:hover {
  color: #fff;
}

/* BUTTON 3 */
.btn-1::after {
  height: 0;
  left: 50%;
  top: 50%;
  width: 0;
}

.btn-1:hover:after {
  height: 100%;
  left: 0;
  top: 0;
  width: 100%;
}
</style>
   <div>
      <a href="<%=request.getContextPath()%>/certi/join2_1.do"><button class="btn-1">개인</button></a> 
      <a href="<%=request.getContextPath()%>/certi/join2_2.do"><button class="btn-1">회사</button></a>
   </div>
