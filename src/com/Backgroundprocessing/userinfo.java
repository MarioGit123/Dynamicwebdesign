package com.Backgroundprocessing;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.util.regex.Pattern;

@WebServlet(name = "userinfo", urlPatterns = "/userinfo")
@MultipartConfig
public class userinfo extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();


        String name=request.getParameter("user");        //名字
        String pwd=request.getParameter("password");    //密码
        Part part = request.getPart("profilePicture");  //图片
        int maxSize = 10 *10* 1024;//1M  //图片大小
        if (part.getSize() <= maxSize) {
            //原来的文件名
            String oldName = part.getSubmittedFileName();
            System.out.println("原始的文件名：" + oldName);
            //获取后缀名
            String suffixName = oldName.substring(oldName.lastIndexOf("."));
            if (".jpg".equals(suffixName) || ".png".equals(suffixName)) {
                //生成新的文件名
                String newName = System.currentTimeMillis() + suffixName;
                System.out.println("新的文件名：" + newName);

                //确定上传到服务器的地址
                //获取工程所在根路径
                String path = request.getServletContext().getRealPath("/") + "imgs";

                File file = new File(path);
                //判断路径所在的目录是否存在，不存在，则新建
                if (!file.exists()) {
                    file.mkdirs();
                }

                //确定上传物理路径
                String absulotPath = path + "/" + newName;
                //调用write，将文件写入到物理路径
                part.write(absulotPath);

                //out.print("<b style='color:red'>上传成功。物理路径是"+absulotPath+"</b>");
                //服务器回显图片到客户端
                out.print("上传成功，" + newName + "<img src=\"imgs/" + newName + "\">");
                out.print("账号"+name);
                out.print("密码"+pwd);
            }else {
                out.print("图片格式不对");
            }
        }else {
            out.print("你上传的文件太大，请控制在1M以内");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
