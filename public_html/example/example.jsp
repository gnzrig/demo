<%@ page contentType="text/html; charset=utf-8" %><%@ include file="init.jsp" %><%

    signupDAO signup = new signupDAO();
    DataSet list = signup.find("status");
//    out.print(list);

    p.setLayout(null);
    p.setBody("example.example");
    p.setLoop("list", list);
    p.display();

%>