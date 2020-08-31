package loginDemo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String uname = request.getParameter("uname");
        String upwd = request.getParameter("upwd");
        String rpwd = request.getParameter("rpwd");
        String uphone = request.getParameter("uphone");
        String uemail = request.getParameter("uemail");
        if(uname==null||"".equals(uname.trim())){
            request.setAttribute("msg","用户姓名不能为空！");
            response.sendRedirect("register.jsp");
        }
        if(upwd==null||"".equals(upwd.trim())){
            request.setAttribute("msg","用户密码不能为空！");
            response.sendRedirect("register.jsp");
        }
        if(rpwd==null||"".equals(rpwd.trim())){
            request.setAttribute("msg","确认密码不能为空！");
            response.sendRedirect("register.jsp");
        }
        if(!(upwd==(rpwd))){
            request.setAttribute("msg","确认密码与密码不一致，请重新输入！");
            response.sendRedirect("register.jsp");
        }
        if(uphone==null||"".equals(uphone.trim())){
            request.setAttribute("msg","用户电话号码不能为空！");
            response.sendRedirect("register.jsp");
        }
        else{
            HttpSession session=request.getSession();
            session.setAttribute("uname",uname);
            session.setAttribute("upwd",uname);
            session.setAttribute("rpwd",uname);
            session.setAttribute("uphone",uname);
            session.setAttribute("uemail",uname);
            response.sendRedirect("index.jsp");
        }

    }
}
