<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%
String path = request.getContextPath();  
Connection conn = null;
Statement stmt = null;
try{

	Class.forName("com.mysql.jdbc.Driver");

	String name = request.getParameter("name");//用request得到
	if(name == null)
		name = "zhangyankong";
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/winter?useUnicode=true&characterEncoding=utf-8","winter","wintersoft");
	
	stmt = conn.createStatement();
	String sql;
	sql = "SELECT * FROM  `teacher_info` WHERE  `user_name` =  '"+name+"'";
	ResultSet rs = stmt.executeQuery(sql);

	

	
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
td{
	height:10px;
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
.STYLE10 {font-size: medium; font-weight: bold; color: #FF0000;}
.STYLE11 {color: #990066}
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
        
        <p>
          <%
     // 展开结果集数据库
    	while(rs.next()){
    
    	
        %>
        </p>
        <table width="100%" border="1" >
          <tr  >
            <td colspan="4" bgcolor="#99FF99" class="STYLE10" style="height:20px;">教师信息</td>
            <td width="20%" bgcolor="#99FF99" class="STYLE10">个人照片</td>
          </tr>
          <tr>
            <td style="height:20px;" width="15%" height="100px">姓名</td>
            <td width="25%"><%=rs.getString("real_name") %></td>
            <td width="15%">性别</td>
            <td width="25%"><%=rs.getString("sex") %></td>
            <td rowspan="9" style = "text-align:center"><img width="150" height="210"  src = "<%= path+"/photo/"+rs.getString("url")%>" /></td>
          </tr>
          <tr>
            <td style="height:20px;">出生年月</td>
            <td><% if(rs.getString("birthday")!=null)
            		out.print(rs.getString("birthday"));%></td>
            <td>最终学位</td>
            <td><%=rs.getString("finalDegree") %></td>
            </tr>
          <tr>
            <td style="height:20px;">毕业学校</td>
            <td colspan="3"><%=rs.getString("GraduationSchool") %></td>
            </tr>
          <tr>
            <td style="height:20px;">从事专业</td>
            <td><%=rs.getString("major") %></td>
            <td>职务</td>
            <td><%=rs.getString("position") %></td>
            </tr>
          <tr>
            <td style="height:20px;">所属院系</td>
            <td colspan="3"><%=rs.getString("college") %></td>
            </tr>
          <tr>
            <td style="height:20px;">所属科室（研究所）</td>
            <td><%=rs.getString("department") %></td>
            <td>职称</td>
            <td><%=rs.getString("title") %></td>
            </tr>
          <tr>
            <td style="height:20px;">办公电话</td>
            <td><%=rs.getString("telephone") %></td>
            <td>邮编</td>
            <td><%=rs.getString("postcode") %></td>
            </tr>
          <tr>
            <td style="height:20px;">E-mail</td>
            <td colspan="3"><%=rs.getString("email") %></td>
            </tr>
          <tr>
            <td style="height:20px;">通讯地址</td>
            <td colspan="3"><%=rs.getString("address") %></td>
            </tr>
          <tr>
            <td colspan="5" bgcolor="#99FF99" class="STYLE10">简历</td>
            </tr>
          <tr>
            <td style="height:100px;">&nbsp;</td>
            <td colspan="4"><%=rs.getString("resume") %></td>
            </tr>
          <tr>
            <td colspan="5" bgcolor="#99FF99" class="STYLE10">研究方向</td>
            </tr>
          <tr>
            <td style="height:100px;">&nbsp;</td>
            <td colspan="4"><%=rs.getString("researchFields") %></td>
            </tr>
          <tr>
            <td colspan="5" bgcolor="#99FF99" class="STYLE10">主持项目</td>
            </tr>
          <tr>
            <td style="height:100px;">&nbsp;</td>
            <td colspan="4"><%=rs.getString("project") %></td>
            </tr>
          <tr >
            <td colspan="5" bgcolor="#99FF99" class="STYLE10">教学工作</td>
            </tr>
          <tr>
            <td style="height:100px;">&nbsp;</td>
            <td colspan="4"><%=rs.getString("teaching") %></td>
            </tr>
          <tr>
            <td colspan="5" bgcolor="#99FF99" class="STYLE10">获奖情况</td>
            </tr>
          <tr>
            <td style="height:100px;">&nbsp;</td>
            <td colspan="4"><%=rs.getString("awards")%></td>
            </tr>
          <tr>
            <td colspan="5" bgcolor="#99FF99" class="STYLE10">招生要求</td>
            </tr>
          <tr>
            <td style="height:100px;">&nbsp;</td>
            <td colspan="4"><%=rs.getString("request") %></td>
            </tr>
          <tr>
            <td colspan="5" bgcolor="#99FF99" class="STYLE10">发表论文</td>
            </tr>
          <tr>
            <td style="height:100px;">&nbsp;</td>
            <td colspan="4"><%=rs.getString("other") %></td>
            </tr>
            <tr>
            <td colspan="5"><div align="center">您是第<%=Integer.parseInt(rs.getString("visit"))+1 %>位访问用户！</div></td>
            </tr>
        </table>
        <p>&nbsp;  </p>
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
<%
    	}
	// 完成后关闭
	rs.close();
	sql = "update `teacher_info` set  `visit` =  `visit`+1 WHERE  `user_name` =  '"+name+"'";
	int a = stmt.executeUpdate(sql);
	stmt.close();
	conn.close();
}catch(SQLException se){
	// 处理 JDBC 错误
	se.printStackTrace();
}catch(Exception e){
	// 处理 Class.forName 错误
	e.printStackTrace();
}finally{
	// 关闭资源
	try{
		if(stmt!=null) stmt.close();
	}catch(SQLException se2){
	}// 什么都不做
	try{
		if(conn!=null) conn.close();
	}catch(SQLException se){
		se.printStackTrace();
	}
}
%>