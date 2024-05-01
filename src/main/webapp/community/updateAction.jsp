<%@page import="teamD.project.dao.McommunityDao"%>
<%@page import="teamD.project.dto.McommunityDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//   request.setCharacterEncoding("UTF-8");					// 필터가 실행함
   String ip=request.getRemoteAddr();
   long idx= Long.parseLong(request.getParameter("idx"));
   String title = request.getParameter("title");
   String content= request.getParameter("content");
   String pageNo= request.getParameter("page");
   McommunityDto vo= McommunityDto.builder()
		   .idx(idx)
		   .title(title)
		   .content(content)
		   .build();
    McommunityDao dao= McommunityDao.getInstance();		         
    int result = dao.update(vo);
    if(result==1){
    	request.setAttribute("message","글 수정이 완료 되었습니다.");
    	request.setAttribute("url","read.jsp?idx="+idx+"&page="+pageNo);
    	pageContext.forward("alert.jsp");
     }
   %>
    