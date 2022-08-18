<%@ page contentType="text/html; charset=utf-8" %><%@ include file="init.jsp" %><%@ page import="malgnsoft.db.*,malgnsoft.util.*" %><%

	Malgn m = new Malgn(request, response, out);

	String qs = m.qs("");
	if(!"".equals(qs)) qs = "?" + qs;
	response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
	response.setHeader("Location", request.getContextPath() + "/main/index.jsp" + qs);

%>