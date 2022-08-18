<%@ page import="malgnsoft.util.*" %><%@ page import="dao.*" %><%@ page import="malgnsoft.db.*" %><%

//request.setCharacterEncoding("utf-8");

final String BUILDVERSION = "21.17.01";

String docRoot = Config.getDocRoot();
String jndi = Config.getJndi();

Malgn m = new Malgn(request, response, out);
signupDAO user = new signupDAO();
Form f = new Form("form1");

Page p = new Page(Config.getTplRoot());
p.setRequest(request);
p.setPageContext(pageContext);
p.setWriter(out);
p.setVar("SYS_TITLE", "Demo site");
p.setBaseRoot("/home/demolocal/public_html/html");

////언어
//String sysLocale = !m.getCookie("SITE_LANG").equals("") ? m.getCookie("SITE_LANG") : "ko";e
//Message _message = new Message(sysLocale);
//m.setMessage(_message);
//p.setMessage(_message);


%>