package filter;

import entity.userName;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by 12789 on 2019/1/12.
 */
@WebFilter(filterName = "LoginFilter",value = "/*")
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request= (HttpServletRequest) req;
        HttpSession session=request.getSession();
        userName user= (userName) session.getAttribute("user");
        String servletPath=request.getServletPath();
        if(user!=null ||servletPath.endsWith("piaojiachaxun.jsp") ||servletPath.endsWith("userNameServlet") ||servletPath.endsWith("TrainNUmServlet") || servletPath.endsWith("login.jsp") || servletPath.endsWith("userServlet") || servletPath.endsWith("addUserName.jsp") || servletPath.endsWith("forgeThePassword.jsp")  || servletPath.endsWith("chaXunLieBiao.jsp") || servletPath.endsWith("chaXunLieBiao.jsp") || servletPath.endsWith(".css") || servletPath.endsWith(".jpg")  || servletPath.endsWith(".PNG") || servletPath.endsWith(".png")  || servletPath.endsWith(".gif") || servletPath.endsWith(".js") ||servletPath.endsWith("InfoServlet") || servletPath.endsWith("agency.jsp")){
            chain.doFilter(req, resp);
        }else{
            request.setAttribute("message","请登录再进行操作");
            request.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
