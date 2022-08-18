<%@ page contentType="text/html; charset=utf-8" %><%@ include file="/init.jsp" %><%

    signupDAO getInfo = new signupDAO();
    DataSet loginCheck;
try {
    f.setRequest(request);
    if(m.isPost() && f.validate()){

    }
} catch(Exception e){
    out.print("Login Error");
}

    p.setLayout(null);
    p.setBody("login.login");
    p.display();

%>