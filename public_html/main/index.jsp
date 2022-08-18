<%@ page import="javax.xml.crypto.Data" %>
<%@ page contentType="text/html; charset=utf-8" %><%@ include file="init.jsp" %><%

String mod = m.request("mod");
int id = m.reqInt("id");
signupDAO infoDao = new signupDAO();

try {
    f.setRequest(request);
if("mod".equals(mod)){
    DataSet info = infoDao.find("id = " + id + " AND status = 1");
    if(!info.next()){
        m.jsAlert("Error");
        return;
    }
    f.addElement("id", info.getInt("id"), "disabled: 'Y'");
    f.addElement("passwd", info.getString("password"), "required:'Y'");
    f.addElement("name", info.getString("name"), "required:'Y'");
    f.addElement("mmtype", info.getString("manager_type"), "required:'Y'");
    f.addElement("mobile", info.getString("mobile"), "required:'Y'");

    if(m.isPost() && f.validate()){

        user.item("password", m.encrypt(f.get("passw")));
        user.item("name", f.get("name"));
        user.item("manager_type", f.get("mmtype"));
        user.item("mobile", f.get("mobile"));

        if(!user.update("id = " + info.getInt("id"))){
            m.jsAlert("Update Error");
            return ;
        }

    }
}else if("del".equals(mod)){
    infoDao.delete(id);
}

else{
    f.addElement("id", null, "required:'Y'");
    f.addElement("passwd", null, "required:'Y'");
    f.addElement("name", null, "required:'Y'");
    f.addElement("mmtype", null, "required:'Y'");
    f.addElement("mobile", null, "required:'Y'");

    if(m.isPost() && f.validate()){
        user.item("id", f.getInt("id"));
        user.item("password", m.encrypt(f.get("passw")));
        user.item("name", f.get("name"));
        user.item("manager_type", f.get("mmtype"));
        user.item("mobile", f.get("mobile"));

        if(!user.insert()){
            m.jsAlert("Insert Error");
            return ;
        }

    }
    m.redirect("/example/example.jsp");
    return ;
}



}
catch(Exception ex) { out.print("Overflow file size. - " + ex.getMessage()); return; }
p.setLayout(ch);
p.setBody("main.index");
p.setVar("form_script", f.getScript());

p.display();

%>
