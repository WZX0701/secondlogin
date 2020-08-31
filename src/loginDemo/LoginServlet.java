package loginDemo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String uname = request.getParameter("uname");
        String upwd = request.getParameter("upwd");
        if(uname==null||"".equals(uname.trim())){
            request.setAttribute("msg","用户姓名不能为空！");
            response.sendRedirect("login.jsp");
        }
        if(upwd==null||"".equals(upwd.trim())){
            request.setAttribute("msg","用户密码不能为空！");
            response.sendRedirect("login.jsp");
        }
        if(!"admin".equals(uname)||!"123".equals(upwd)) {
            request.setAttribute("msg", "用户姓名或密码错误！");
            response.sendRedirect("login.jsp");
        }
        if("admin".equals(uname)&&"123".equals(upwd)){
            HttpSession session=request.getSession();
            session.setAttribute("uname",uname);
            response.sendRedirect("index.jsp");
        }

    }
}
