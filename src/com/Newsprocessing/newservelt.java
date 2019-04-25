package com.Newsprocessing;

import com.Newsprocessing.model.dao.Newsdaoo;
import com.Newsprocessing.model.entlty.News;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "newservelt" ,urlPatterns = "/newservelt")
public class newservelt extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Newsdaoo nw=new Newsdaoo();
        List<News> list=nw.selectAll();
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        HttpSession ss=request.getSession();
        ss.setAttribute("list",list);
        response.sendRedirect("http://localhost:8080/web/javasp/April/apr16/news.jsp");



        PrintWriter out=response.getWriter();
        for(News s:list){
          out.write(s.getNinfo()+"<br>");
            System.out.println(s.getNinfo());
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
