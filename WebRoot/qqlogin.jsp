<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String to = request.getHeader("referer");// 跳转的url
	//out.println(to);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0044)https://www.easychair.org/account/signin.cgi -->
<HTML lang=en-US xml:lang="en-US" xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<base href="<%=basePath%>">
<TITLE>Co-Trip系统用户绑定</TITLE>
<SCRIPT>if (top != self) top.location.href=location.href;</SCRIPT>
<script language="javascript">
	
 	function check(){
		if(document.login.username.value==""){
			alert("用户邮箱不能为空!");
			
			return false;
		}
		if(document.login.username.value.length>=40){
			alert("用户邮箱不能超过40个字符!");
			return false;
		}
		
		if(document.login.password.value==""){
			alert("密码不能为空!");
			
			return false;
		}
		if(document.login.password.value.length>=20){
			alert("密码长度不能超过20个字符!");
			
			return false;
		}
	}
</script>

<LINK rel=StyleSheet type=text/css href="css/ad.css">
<LINK rel=StyleSheet type=text/css href="css/cool.css">
<LINK rel=icon type=image/jpeg href="images/chairEC.jpg">
<META content="text/html; charset=UTF-8" http-equiv=Content-Type>
<META name=GENERATOR content="MSHTML 8.00.7600.17115">
</HEAD>
<BODY>
	<DIV id=content class=nomenu>
		<SCRIPT src="js/easy.js"> </SCRIPT>

		<SCRIPT src="js/signin.js"> </SCRIPT>

		<TABLE
			style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-COLLAPSE: collapse; BORDER-TOP: 0px; BORDER-RIGHT: 0px; PADDING-TOP: 0px"
			cellSpacing=0 cellPadding=0>
			<TBODY>
				<TR>
					<TD style="VERTICAL-ALIGN: top" colSpan=3>
						<DIV
							style="PADDING-BOTTOM: 0px; MARGIN: 0px 0px 0px 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 0px; HEIGHT: 26px; PADDING-TOP: 0px">
							<H2 id=title>Co-Trip 用户绑定</H2>
						</DIV>
					</TD>
				</TR>
				<TR>
					<TD style="MARGIN-TOP: 0px; VERTICAL-ALIGN: top; PADDING-TOP: 0px">
						<FORM name="login" id="login" style="MARGIN: 10px 0px 5px"
							onSubmit="javascript:return check();" method=post
							action="/qqLogin.do">
							<input type="hidden" name="to" value="<%=to %>">
							<TABLE style="MARGIN-TOP: 0px; PADDING-TOP: 0px" class=formtable1>
								<TBODY>
									<TR>
										<TD style="PADDING-BOTTOM: 5pt" colSpan=2>你好，<%=(String)session.getAttribute("nickName")%>！请使用您的Co-Trip用户绑定到QQ</TD>
									</TR>
									<TR>
										<TD class=right>用户邮箱:</TD>
										<TD><INPUT name="username" id="username" size=30
											type=text>
										</TD>
									</TR>
									<TR>
										<TD class=right>用户密码:</TD>
										<TD><INPUT id=password size=30 type=password
											name=password>
										</TD>
									</TR>
									<TR>
										<TD><INPUT value="确定" type=submit name="Login">
										</TD>
									</TR>
									<TR>
										<TD colSpan=2>
											<HR>
										</TD>
									</TR>
									<TR>
										<TD style="PADDING-BOTTOM: 5pt" colSpan=2>如果您还没有Co-Trip账号,
											<A href="userRegistration.html">欢迎您注册</A>
										</TD>
									</TR>
									<TR>
										<TD style="PADDING-BOTTOM: 5pt" colSpan=2>如果您有其他的关于登录的问题，
											<A href="loginHelp.html">请点击这个链接</A>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</FORM>
					</TD>
					<TD style="VERTICAL-ALIGN: top"><A
						href="http://kg.hnust.edu.cn:8080/cotrip/"><IMG
							style="BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; PADDING-BOTTOM: 5pt; PADDING-LEFT: 15pt; PADDING-RIGHT: 5pt; BORDER-TOP: 0px; BORDER-RIGHT: 0px; PADDING-TOP: 15pt"
							src="images/logoCT.gif">
					</A>
					</TD>
					<TD style="VERTICAL-ALIGN: top"></TD>
				</TR>
			</TBODY>
		</TABLE>
	</DIV>
</BODY>
</HTML>
