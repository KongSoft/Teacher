<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>教师信息</title>
<meta name="description" content="" />

<link type="text/css" href="http://xcxxx.hfut.edu.cn/_css/_system/system.css" rel="stylesheet"/>
<link type="text/css" href="http://xcxxx.hfut.edu.cn/_js/_portletPlugs/sudyNavi/css/sudyNav.css" rel="stylesheet" />
<link href="css/login.css" type="text/css" rel="stylesheet"> 
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
         <a href="http://xcxxx.hfut.edu.cn/" title="首页" target="_self"><span class="item-name">首页</span></a><i class="mark"></i> 
          
     </li> 
      
     <li class="nav-item i2 "> 
         <a href="http://xcxxx.hfut.edu.cn/tzgg/list.htm" title="通知公告" target="_self"><span class="item-name">通知公告</span></a><i class="mark"></i> 
          
     </li> 
      
     <li class="nav-item i3 "> 
         <a href="http://xcxxx.hfut.edu.cn/165/list.htm" title="信工概况" target="_self"><span class="item-name">信工概况</span></a><i class="mark"></i> 
          
         <ul class="sub-nav"> 
              
             <li class="nav-item i3-1 "> 
                 <a href="http://xcxxx.hfut.edu.cn/173/list.htm" title="信工简介" target="_self"><span class="item-name">信工简介</span></a><i class="mark"></i> 
                  
             </li> 
              
             <li class="nav-item i3-2 "> 
                 <a href="http://xcxxx.hfut.edu.cn/174/list.htm" title="机构设置" target="_self"><span class="item-name">机构设置</span></a><i class="mark"></i> 
                  
             </li> 
              
         </ul> 
          
     </li> 
      
     <li class="nav-item i4 "> 
         <a href="http://xcxxx.hfut.edu.cn/164/list.htm" title="信工新闻" target="_self"><span class="item-name">信工新闻</span></a><i class="mark"></i> 
          
     </li> 
      
     <li class="nav-item i5 "> 
         <a href="http://xcxxx.hfut.edu.cn/szdw/list.htm" title="师资队伍" target="_self"><span class="item-name">师资队伍</span></a><i class="mark"></i> 
          
         <ul class="sub-nav"> 
              
             <li class="nav-item i5-1 "> 
                 <a href="http://xcxxx.hfut.edu.cn/js/list.htm" title="教授及副教授" target="_self"><span class="item-name">教授及副教授</span></a><i class="mark"></i> 
                  
             </li> 
              
             <li class="nav-item i5-2 "> 
                 <a href="http://xcxxx.hfut.edu.cn/js_1621/list.htm" title="专职教师" target="_self"><span class="item-name">专职教师</span></a><i class="mark"></i> 
                  
             </li> 
              
             <li class="nav-item i5-3 "> 
                 <a href="http://xcxxx.hfut.edu.cn/fdy/list.htm" title="辅导员" target="_self"><span class="item-name">辅导员</span></a><i class="mark"></i> 
                  
             </li> 
              
             <li class="nav-item i5-4 "> 
                 <a href="http://xcxxx.hfut.edu.cn/syy/list.htm" title="实验员" target="_self"><span class="item-name">实验员</span></a><i class="mark"></i> 
                  
             </li> 
              
         </ul> 
          
     </li> 

      
     <li class="nav-item i6 "> 
         <a href="http://xcxxx.hfut.edu.cn/bjdt/list.htm" title="班级动态" target="_self"><span class="item-name">班级动态</span></a><i class="mark"></i> 
          
     </li> 
      
     <li class="nav-item i7 "> 
         <a href="http://xcxxx.hfut.edu.cn/188/list.htm" title="学生社团" target="_self"><span class="item-name">学生社团</span></a><i class="mark"></i> 
          
         <ul class="sub-nav"> 
              
             <li class="nav-item i7-1 "> 
                 <a href="http://xcxxx.hfut.edu.cn/xsh/list.htm" title="学生会" target="_self"><span class="item-name">学生会</span></a><i class="mark"></i> 
                  
             </li> 
              
             <li class="nav-item i7-2 "> 
                 <a href="http://xcxxx.hfut.edu.cn/tzz/list.htm" title="团总支" target="_self"><span class="item-name">团总支</span></a><i class="mark"></i> 
                  
             </li> 
              
             <li class="nav-item i7-3 "> 
                 <a href="http://xcxxx.hfut.edu.cn/qnzyz/list.htm" title="青年志愿者" target="_self"><span class="item-name">青年志愿者</span></a><i class="mark"></i> 
                  
             </li> 
              
             <li class="nav-item i7-4 "> 
                 <a href="http://xcxxx.hfut.edu.cn/cxcyxh/list.htm" title="创新创业协会" target="_self"><span class="item-name">创新创业协会</span></a><i class="mark"></i> 
                  
             </li> 
              
             <li class="nav-item i7-5 "> 
                 <a href="http://xcxxx.hfut.edu.cn/cxjd_874/list.htm" title="创新基地" target="_self"><span class="item-name">创新基地</span></a><i class="mark"></i> 
                  
             </li> 
              
         </ul> 
          
     </li> 
      
     <li class="nav-item i8 "> 
         <a href="http://xcxxx.hfut.edu.cn/171/list.htm" title="文档下载" target="_self"><span class="item-name">文档下载</span></a><i class="mark"></i> 
          
     </li> 
      
</ul> 

 
 
 </div>
        </div>
      </div></td>
    </tr>
  </table>
</div>
<div  id="infotit">

<table width="100%" height="400" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="background">
  <tr>

    <td width="100%" valign="top">
    
      <div>

		   <div class="login" >
			    <div class="message">请登录</div>
			    <div id="darkbannerwrap"></div>
			    
			    <form method="post" action = "LoginServlet">
					<input name="action" value="login" type="hidden">
					<input name="username" placeholder="用户名" required="" type="text">
					<hr class="hr15">
					<input name="password" placeholder="密码" required="" type="password">
					<hr class="hr15">
					<input value="教师登录" style="width:100%;" type="submit">
					<hr class="hr20">
					<!-- 帮助 <a onClick="alert('请联系管理员')">忘记密码</a> -->
				</form>
		
			
			</div>
   
      </div>
 
    </td>
    
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
