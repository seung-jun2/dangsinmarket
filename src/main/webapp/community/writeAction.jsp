<%@page import="teamD.project.dto.MuserDto"%>
<%@page import="teamD.project.dto.McommunityDto"%>
<%@page import="teamD.project.dao.McommunityDao"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.net.Inet4Address"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MuserDto writer = (MuserDto) session.getAttribute("user");

	String title = request.getParameter("title");
	String content = request.getParameter("content");
	McommunityDao dao = McommunityDao.getInstance();
	long idx = dao.insert(McommunityDto.builder()
	.writer(writer.getId())
	//.writer(writer)
	.title(title)
	.content(content)
	.build());
%>
<script type="text/javascript">
alert('글 등록이 완료 되었습니다.')
location.href='community.jsp'
</script>