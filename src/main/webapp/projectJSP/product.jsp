<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="teamD.project.dto.MproductDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Collection"%>
<%@page import="teamD.project.dao.MproductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	MproductDao dao = MproductDao.getInstance();
	MproductDto dto = new MproductDto();
	
	Map<String,MproductDto> map = new HashMap<>();
	map.put("pcode", dto);
	
	List<MproductDto> list = dao.recentlist(map);
	
	out.print(list);
	

%>