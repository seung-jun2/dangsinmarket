<%@page import="teamD.project.dto.MserviceDto"%>
<%@page import="teamD.project.dao.MserviceDao"%>
<%@page import="teamD.project.dto.McommunityDto"%>
<%@page import="teamD.project.dao.McommunityDao"%>
<%@page import="teamD.project.dto.MuserDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


	MuserDto user = (MuserDto)session.getAttribute("user");
	if(user==null) 
		throw new IllegalAccessException();

	int idx=0; 
	int pageNo =0;
	if(request.getParameter("idx") !=null) {
      idx = Integer.parseInt(request.getParameter("idx"));
	}
    if(request.getParameter("page")!=null) {
        pageNo = Integer.parseInt(request.getParameter("page"));
    }
            
   	MserviceDao dao = MserviceDao.getInstance();
    MserviceDto vo = dao.selectByIdx(idx);	//idx 글 조회하기
    
    if(!user.getId().equals(vo.getWriter()))		// 로그인한 사용자와 글쓴이가 다를 때 
    		throw new IllegalAccessException();

    //(1)
    request.setAttribute("vo", vo);
    //(2)
    request.setAttribute("page", pageNo);
    pageContext.forward("updateView.jsp");		//화면에 애트리뷰트와 함께 요청 전달.
%>