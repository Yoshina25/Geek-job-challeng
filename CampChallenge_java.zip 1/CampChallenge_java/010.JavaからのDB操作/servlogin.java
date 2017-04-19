/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zairopack;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author yoshina
 */
@WebServlet(name = "servlogin", urlPatterns = {"/servlogin"})
public class servlogin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        //送信されたHTMLの情報を受け取る処理。
        request.setCharacterEncoding("UTF-8");
        
            String name = request.getParameter("text");
            String pas = request.getParameter("pass");
            int pass = Integer.parseInt(pas);
        
        
        //セッションを利用するための処理。
        HttpSession session = request.getSession(true);
            String in= " ";
        
       
         try(PrintWriter out = response.getWriter();){
             
            Connection cn = null;
            PreparedStatement st = null;
            ResultSet date = null;
          
          
        //データーベースへの接続処理。 
        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/zaiko","yukizakura","pass");
         
            
                //passと名前をデーターベースに送る処理。
                st = cn.prepareStatement("select * from user where pass = ? and name = ?");
                
                st.setInt(1, pass);
                st.setString(2, name);
            
                date = st.executeQuery();
                    
                
        //passと名前が正しければ、menuに飛ぶ。passと名前が異なる場合、login画面に戻る処理。
        if (date.next() == true){
            
            RequestDispatcher dis = request.getRequestDispatcher("/menu.jsp");
            dis.forward(request,response);
            
            //セッションに値okを入れる。
            in = "ok";
            
            session.setAttribute("sess",in);
            
        }else{
            
            //データーベース上にdate.netxの値がない時、login画面に戻す処理。
             RequestDispatcher dis = request.getRequestDispatcher("/login.jsp");
             dis.forward(request,response); 
             
             
             //セッションにerという値を入れる。
             in ="er";
             
             session.setAttribute("ses",in);
        }
                
            cn.close();
            st.close();
            date.close();
          
            
        //エラーハンドリング。
        }catch(SQLException e_sql){
            out.println("接続時にエラーが発生しました:"+e_sql.toString());
        }catch(Exception e){
            out.println("接続時にエラーが発生しました:"+e.toString());
        }finally{
            if(cn != null || st != null){
                try
                {
                cn.close();
                }catch(Exception e_con){
                System.out.print(e_con.getMessage());
                }
            }
        }
   
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet servlogin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servlogin at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

