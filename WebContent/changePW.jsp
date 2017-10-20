<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%
	if(session.getAttribute("user")==null)
		response.sendRedirect("login.jsp");
	String user = (String)session.getAttribute("user");
	String real_name = (String)session.getAttribute("real_name");
	String path = request.getContextPath(); 	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>教师信息</title>
<meta name="description" content="" />

<link type="text/css" href="http://xcxxx.hfut.edu.cn/_css/_system/system.css" rel="stylesheet"/>
<link type="text/css" href="http://xcxxx.hfut.edu.cn/_js/_portletPlugs/sudyNavi/css/sudyNav.css" rel="stylesheet" />

<script language="javascript" src="http://xcxxx.hfut.edu.cn/_js/jquery.min.js"></script>
<script language="javascript" src="http://xcxxx.hfut.edu.cn/_js/jquery.sudy.wp.visitcount.js"></script>
<script type="text/javascript" src="http://xcxxx.hfut.edu.cn/_js/_portletPlugs/wp_photos/layer/layer.min.js"></script>
<script type="text/javascript" src="http://xcxxx.hfut.edu.cn/_js/_portletPlugs/sudyNavi/jquery.sudyNav.js"></script>
<style type="text/css">
/* ---信息页标题--- */
#container_infobody {
	width: 1002px;
}
#infocontent {
	padding-top: 5px;
	padding-bottom: 5px;
	float: none;
}
#infocontent img{
	background-color:#FFFFFF;
	border-right-width: 5px;
	border-bottom-width: 5px;
	border-right-style: solid;
	border-bottom-style: solid;
	border-right-color: #FFFFFF;
	border-bottom-color: #FFFFFF;
}
#infotit {
}
</style>
<link href="http://xcxxx.hfut.edu.cn/_upload/tpl/05/1b/1307/template1307/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE7 {color: #000000}
.STYLE10 {font-size: medium; font-weight: bold; color: #FF0000;}
-->
</style>
<script type="text/javascript">
document.register.password.focus();
function test(){
     var f=document.register;
     var newPsw1 =f.password.value;
     var newPsw2 = f.passwordtoo.value;
     if(newPsw1 == "" || newPsw2 == ""){
          alert("密码框不能为空!");
          f.password.value='';
          f.passwordtoo.value='';
          f.password.focus();
          return false;
     }
     if(newPsw1 != newPsw2){
          alert("两次密码输入不一致!");
          f.password.value='';
          f.passwordtoo.value='';
          f.password.focus();
          return false; 
     }
     return true;
}
</script>
</head>
<body>
<div id="container_page">
<div id="head">
  <table width="1002" height="383" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td align="right" valign="top" background="http://xcxxx.hfut.edu.cn/_upload/tpl/05/1b/1307/template1307/images/head.jpg"><table width="45%" height="109" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="109"><div frag="面板0">
            <div class="biaoti4" frag="窗口0" portletmode="simpleSiteName">
              <span class='Site_Name'>信息工程系</span>
            </div>
          </div></td>
        </tr>
      </table></td>
    </tr>
  </table>
  <table width="100%" height="33" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td align="center" bgcolor="#757575"><div frag="面板1">
        <div frag="窗口1">
          <div id="wp_nav_w1"> 

 
<ul class="wp_nav" data-nav-config="{drop_v: 'down', drop_w: 'right', dir: 'y', opacity_main: '-1', opacity_sub: '-1', dWidth: '0'}">
      
     <li class="nav-item i1 "> 
         <a href="#" title="欢迎" target="_self"><span class="item-name">欢迎你，<%=real_name %>!</span></a><i class="mark"></i> 
          
     </li> 
      
     <li class="nav-item i2 " style="float:right;"> 
         <a href="<%=path+"/LogOutServlet"%>"   title="退出登录" target="_self"><span class="item-name">退出登录</span></a><i class="mark"></i> 
          
     </li> 
      
     <li class="nav-item i3 " style="float:right;"> 
         <a href="<%=path+"/changePW.jsp"%>" title="修改密码" target="_self"><span class="item-name">修改密码</span></a><i class="mark"></i> 
             
     </li> 
      
     <li class="nav-item i4 " style="float:right;"> 
         <a href="<%=path+"/upload.jsp"%>"  title="更改头像" target="_self"><span class="item-name">更改头像</span></a><i class="mark"></i> 
          
     </li> 
      
     <li class="nav-item i5 " style="float:right;"> 
         <a href="<%=path+"/editinfo.jsp"%>"   title="修改信息" target="_self"><span class="item-name">修改信息</span></a><i class="mark"></i> 
   
     </li> 
     <li class="nav-item i6 " style="float:right;"> 
         <a href="<%=path+"/main.jsp"%>"   title="信息主页" target="_self"><span class="item-name">信息主页</span></a><i class="mark"></i> 
   
     </li> 
      
</ul> 

 
 
 </div>
        </div>
      </div></td>
    </tr>
  </table>
</div>
<div  id="infotit">
<table width="1002" height="8" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="8">&nbsp;</td>
  </tr>
</table>
<table width="100%" height="400" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="99" valign="top">&nbsp;</td>
    <td width="902" valign="top"><div frag="面板21">
      <div frag="窗口21" portletmode="simpleArticleAttri">
  
       <form method="post" name="register"  action = "ChangePWServlet" style="text-align:center">
        
         <table width="100%" border="0">
           <tr>
             <td><div align="center"><h1>修改密码</h1>
             </div></td>
			
           </tr>
		    <tr>
             <td style="height:20px;"></td>
			
           </tr>
		 
           <tr>
             <td ><div align="center" style="height:20px;">新 密 码：<input name="password" type="password"></input></div></td>
           </tr>
           <tr>
             <td style="height:10px;"></td>
			
           </tr>
           <tr>
             <td><div align="center" style="height:20px;">确认密码：<input name="passwordtoo" type="password"></input></div></td>
           </tr>
            <tr>
             <td style="height:10px;"></td>
			
           </tr>
           <tr>
             <td><div align="center"> <input name="chapsubmit" value="提 &nbsp; 交" type="submit" onclick="return test()"/></div></td>
           </tr>
         </table>
       
        </form>
      </div>
    
    </div></td>
    <td width="99" valign="top">&nbsp;</td>
  </tr>
</table>
</div>
  <div id="foot">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="http://xcxxx.hfut.edu.cn/_upload/tpl/05/1b/1307/template1307/images/h.gif" width="1002" height="2" /></td>
  </tr>
</table>
<table width="1002" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="73"  align="center" valign="middle" class="foothang" >版权所有 © 合肥工业大学宣城校区管委会&nbsp;&nbsp;&nbsp;&nbsp;地址：安徽省宣城市宣州区薰化路301号，邮编：242000</td>
  </tr>
</table>
  </div>
</div>
</body>
</html>