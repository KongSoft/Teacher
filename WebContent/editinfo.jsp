<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%
	if(session.getAttribute("user")==null)
		response.sendRedirect("login.jsp");
	String user = (String)session.getAttribute("user");
	//user = "zhangyankong";
	String real_name = (String)session.getAttribute("real_name");
	String path = request.getContextPath();  
	//String name = session.getAttribute(arg0);
	Connection conn = null;
	Statement stmt = null;
	try{

		Class.forName("com.mysql.jdbc.Driver");

		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/winter?useUnicode=true&characterEncoding=utf-8","winter","wintersoft");
		
		stmt = conn.createStatement();
		String sql;
		sql = "SELECT * FROM  `teacher_info` WHERE  `user_name` =  '"+user+"'";
		ResultSet rs = stmt.executeQuery(sql);

	

	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>教师信息</title>
<meta name="description" content="" />
<link rel="stylesheet" href="js/style.css" />
<script type="text/javascript" src="js/tinyeditor.js"></script>
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
    
  
          <%
     // 展开结果集数据库
    	while(rs.next()){
    
    	
        %>
       <form method="post" action = "SaveInfoServlet">
        <table width="100%" border="1">
          <tr>
            <td colspan="4" bgcolor="#99FF99" class="STYLE10">教师信息</td>
            <td width="20%" bgcolor="#99FF99" class="STYLE10">个人照片</td>
          </tr>
          <tr>
            <td  width="15%">姓名</td>
            <td width="25%"><input name="real_name" value="<%=rs.getString("real_name") %>"  type="text"></td>
            <td width="15%">性别</td>
            <td width="25%">
            <select name="sex">
  				<option value ="男" >男</option>
  				<option value ="女" <% if(rs.getString("sex").equals("女"))
  					out.println("selected");%>>女</option>
  				
			</select></td>
            <td rowspan="9" style = "text-align:center"><image width="150" height="210" src = "<%= path+"/photo/"+rs.getString("url")%>" />
            <br />
			<a href="<%=path+"/upload.jsp" %>" >更改头像</a>
            </td>
          </tr>
          <tr>
            <td>出生年月</td>
            <td><input name="birthday" value="<%=rs.getString("birthday") %>" type="date"></td>
            <td>最终学位</td>
            <td><input name="finalDegree" value="<%=rs.getString("finalDegree") %>"  type="text"></td>
            </tr>
          <tr>
            <td>毕业学校</td>
            <td colspan="3"><input name="GraduationSchool" value="<%=rs.getString("GraduationSchool") %>"  type="text"></td>
            </tr>
          <tr>
            <td>从事专业</td>
            <td><input name="major" value="<%=rs.getString("major") %>"  type="text"></td>
            <td>职务</td>
            <td><input name="position" value="<%=rs.getString("position") %>"  type="text"></td>
            </tr>
          <tr>
            <td>所属院系</td>
            <td colspan="3"><input name="college" value="<%=rs.getString("college") %>"  type="text"></td>
            </tr>
          <tr>
            <td>所属科室（研究所）</td>
            <td><input name="department" value="<%=rs.getString("department") %>"  type="text"></td>
            <td>职称</td>
            <td> <select name="title">
  				<option value ="教授" >教授</option>
  				<option value ="副教授" <% if(rs.getString("title").equals("副教授"))
  					out.println("selected");%>>副教授</option>
 					<option value ="讲师" <% if(rs.getString("title").equals("讲师"))
 					out.println("selected");%>>讲师</option>
 					<option value ="助教" <% if(rs.getString("title").equals("助教"))
 					out.println("selected");%>>助教</option>
  				
			</select></td>
            </tr>
          <tr>
            <td>办公电话</td>
            <td><input name="telephone" value="<%=rs.getString("telephone") %>"  type="text"></td>
            <td>邮编</td>
            <td><input name="postcode" value="<%=rs.getString("postcode") %>"  type="text"></td>
            </tr>
          <tr>
            <td height="25">E-mail</td>
            <td colspan="3"><input name="email" value="<%=rs.getString("email") %>" style="width:400px;" type="text"></td>
            </tr>
          <tr>
            <td>通讯地址</td>
            <td colspan="3"><input name="address" value="<%=rs.getString("address") %>" style="width:400px;" type="text"></td>
            </tr>
          <tr>
            <td colspan="5" bgcolor="#99FF99" class="STYLE10">简历</td>
            </tr>
          <tr>
            <td>&nbsp;</td>
            <td colspan="4">
            <textarea id="resume" name="resume" style="width:710px; height:200px"><%=rs.getString("resume") %></textarea></td>
             <script type="text/javascript">
				new TINY.editor.edit('edit_resume',{
					id:'resume',
					width:725,
					height:175,
					cssclass:'te',
					controlclass:'tecontrol',
					rowclass:'teheader',
					dividerclass:'tedivider',
					controls:['bold','italic','underline','strikethrough','|','subscript','superscript','|',
							  'orderedlist','unorderedlist','|','leftalign',
							  'centeralign','rightalign','blockjustify','|','font','size','style','unformat'],
					footer:false,
					fonts:['Verdana','Arial','Georgia','Trebuchet MS'],
					xhtml:true,
					cssfile:'style.css',
					bodyid:'t_resume',
					footerclass:'tefooter',
					toggle:{text:'source',activetext:'wysiwyg',cssclass:'toggle'},
					resize:{cssclass:'resize'}
				}).post();
			</script>
            </tr>
          <tr>
            <td colspan="5" bgcolor="#99FF99" class="STYLE10">研究方向</td>
            </tr>
          <tr>
            <td>&nbsp;</td>
            <td colspan="4">
            <textarea id= "researchFields" name="researchFields" style="width:725px; height:200px"><%=rs.getString("researchFields") %></textarea></td>
            <script type="text/javascript">
				new TINY.editor.edit('edit_researchFields',{
					id:'researchFields',
					width:725,
					height:175,
					cssclass:'te',
					controlclass:'tecontrol',
					rowclass:'teheader',
					dividerclass:'tedivider',
					controls:['bold','italic','underline','strikethrough','|','subscript','superscript','|',
						  'orderedlist','unorderedlist','|','leftalign',
						  'centeralign','rightalign','blockjustify','|','font','size','style','unformat'],
					footer:false,
					fonts:['Verdana','Arial','Georgia','Trebuchet MS'],
					xhtml:true,
					cssfile:'style.css',
					bodyid:'t_researchFields',
					footerclass:'tefooter',
					toggle:{text:'source',activetext:'wysiwyg',cssclass:'toggle'},
					resize:{cssclass:'resize'}
				});
			</script>
            </tr>
          <tr>
            <td colspan="5" bgcolor="#99FF99" class="STYLE10">主持项目</td>
            </tr>
          <tr>
            <td>&nbsp;</td>
            <td colspan="4">
            <textarea id="project" name="project" style="width:710px; height:200px"><%=rs.getString("project") %></textarea></td>
            
             <script type="text/javascript">
				new TINY.editor.edit('edit_project',{
					id:'project',
					width:725,
					height:175,
					cssclass:'te',
					controlclass:'tecontrol',
					rowclass:'teheader',
					dividerclass:'tedivider',
					controls:['bold','italic','underline','strikethrough','|','subscript','superscript','|',
						  'orderedlist','unorderedlist','|','leftalign',
						  'centeralign','rightalign','blockjustify','|','font','size','style','unformat'],
					footer:false,
					fonts:['Verdana','Arial','Georgia','Trebuchet MS'],
					xhtml:true,
					cssfile:'style.css',
					bodyid:'t_project',
					footerclass:'tefooter',
					toggle:{text:'source',activetext:'wysiwyg',cssclass:'toggle'},
					resize:{cssclass:'resize'}
				});
			</script></tr>
          <tr>
            <td colspan="5" bgcolor="#99FF99" class="STYLE10">教学工作</td>
            </tr>
          <tr>
            <td>&nbsp;</td>
            <td colspan="4">
            <textarea id="teaching" name="teaching" style="width:710px; height:200px"><%=rs.getString("teaching") %></textarea></td>
            <script type="text/javascript">
				new TINY.editor.edit('edit_teaching',{
					id:'teaching',
					width:725,
					height:175,
					cssclass:'te',
					controlclass:'tecontrol',
					rowclass:'teheader',
					dividerclass:'tedivider',
					controls:['bold','italic','underline','strikethrough','|','subscript','superscript','|',
						  'orderedlist','unorderedlist','|','leftalign',
						  'centeralign','rightalign','blockjustify','|','font','size','style','unformat'],
					footer:false,
					fonts:['Verdana','Arial','Georgia','Trebuchet MS'],
					xhtml:true,
					cssfile:'style.css',
					bodyid:'t_teaching',
					footerclass:'tefooter',
					toggle:{text:'source',activetext:'wysiwyg',cssclass:'toggle'},
					resize:{cssclass:'resize'}
				});
			</script>
            </tr>
          <tr>
            <td colspan="5" bgcolor="#99FF99" class="STYLE10">获奖情况</td>
            </tr>
          <tr>
            <td>&nbsp;</td>
            <td colspan="4"><textarea id="awards" name="awards" style="width:710px; height:200px"><%=rs.getString("awards") %></textarea></td>
            
             <script type="text/javascript">
				new TINY.editor.edit('edit_awards',{
					id:'awards',
					width:725,
					height:175,
					cssclass:'te',
					controlclass:'tecontrol',
					rowclass:'teheader',
					dividerclass:'tedivider',
					controls:['bold','italic','underline','strikethrough','|','subscript','superscript','|',
						  'orderedlist','unorderedlist','|','leftalign',
						  'centeralign','rightalign','blockjustify','|','font','size','style','unformat'],
					footer:false,
					fonts:['Verdana','Arial','Georgia','Trebuchet MS'],
					xhtml:true,
					cssfile:'style.css',
					bodyid:'t_awards',
					footerclass:'tefooter',
					toggle:{text:'source',activetext:'wysiwyg',cssclass:'toggle'},
					resize:{cssclass:'resize'}
				});
			</script></tr>
          <tr>
            <td colspan="5" bgcolor="#99FF99" class="STYLE10">招生要求</td>
            </tr>
          <tr>
            <td>&nbsp;</td>
            <td colspan="4"><textarea id="requestion"  name="requestion" style="width:710px; height:200px"><%=rs.getString("request") %></textarea></td>
             <script type="text/javascript">
				new TINY.editor.edit('edit_requestion',{
					id:'requestion',
					width:725,
					height:175,
					cssclass:'te',
					controlclass:'tecontrol',
					rowclass:'teheader',
					dividerclass:'tedivider',
					controls:['bold','italic','underline','strikethrough','|','subscript','superscript','|',
						  'orderedlist','unorderedlist','|','leftalign',
						  'centeralign','rightalign','blockjustify','|','font','size','style','unformat'],
					footer:false,
					fonts:['Verdana','Arial','Georgia','Trebuchet MS'],
					xhtml:true,
					cssfile:'style.css',
					bodyid:'t_requestion',
					footerclass:'tefooter',
					toggle:{text:'source',activetext:'wysiwyg',cssclass:'toggle'},
					resize:{cssclass:'resize'}
				});
			</script>
            </tr>
          <tr>
            <td colspan="5" bgcolor="#99FF99" class="STYLE10">发表论文</td>
            </tr>
          <tr>
            <td>&nbsp;</td>
            <td colspan="4"><textarea id="other"  name="other" style="width:727px; height:200px">
<%=rs.getString("other") %>
</textarea></td>
 <script type="text/javascript">
				new TINY.editor.edit('edit_other',{
					id:'other',
					width:725,
					height:175,
					cssclass:'te',
					controlclass:'tecontrol',
					rowclass:'teheader',
					dividerclass:'tedivider',
					controls:['bold','italic','underline','strikethrough','|','subscript','superscript','|',
						  'orderedlist','unorderedlist','|','leftalign',
						  'centeralign','rightalign','blockjustify','|','font','size','style','unformat'],
					footer:false,
					fonts:['Verdana','Arial','Georgia','Trebuchet MS'],
					xhtml:true,
					cssfile:'style.css',
					bodyid:'t_other',
					footerclass:'tefooter',
					toggle:{text:'source',activetext:'wysiwyg',cssclass:'toggle'},
					resize:{cssclass:'resize'}
				});
			</script>
            </tr>
        </table>
        <p style = "text-align:center"> <input value="提交" style="width:20%" type="submit" onclick="edit_researchFields.post();edit_resume.post();edit_teaching.post();edit_project.post();edit_awards.post();edit_requestion.post();edit_other.post();"></p>
       
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
<%
    	}
	// 完成后关闭
	rs.close();
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