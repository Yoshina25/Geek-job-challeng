/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author yoshina
 */
@WebServlet(urlPatterns = {"/challenge11_2"})
public class challenge11_2 extends HttpServlet {

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

        
        try( PrintWriter out = response.getWriter();){
        
        //データベースへの接続処理。
        request.setCharacterEncoding("UTF-8");
        
        Connection cn = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        
        
        //HTMLから送信された情報の取得。
        String id = request.getParameter("ID");
            int Id = Integer.parseInt(id);
        String Age = request.getParameter("ag");
            int age = Integer.parseInt(Age);
            
        String name = request.getParameter("Nm");
        String tell = request.getParameter("Tll");
        String birthday = request.getParameter("brthdy");
        
        
         try{
           //データーベースへのアクセス処理。
            Class.forName("com.mysql.jdbc.Driver").newInstance();
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/challengedb","yukizakura","pass");
            
                
         //変数をセットして、ベータ―ベースの更新を行う処理。
         st = cn.prepareStatement("update profiles set name = ?, tell = ?,age = ?, birthday = ? where profilesID = ?");
            st.setString(1,name);
            st.setString(2, tell);
            st.setInt(3,age);
            st.setString(4, birthday);
            st.setInt(5,Id);
        
         st.executeUpdate();
         
         //セットした情報を表示する処理。
         st = cn.prepareStatement("select * from profiles where profilesID = ?");
            st.setInt(1,Id);
            
         rs = st.executeQuery();

         out.println("下記の通りに情報が更新されました。"+"<br>");
         
          while (rs.next()){
            out.println("ID:"+rs.getInt("profilesID")+"<br>"+
                    "名前:"+rs.getString("name")+"<br>"+
                    "電話番号:"+rs.getString("tell")+"<br>"+
                    "年齢:"+rs.getInt("age")+"<br>"+
                    "誕生日:"+rs.getString("birthday")+"<br>");
            }
                
            cn.close();
            st.close();
            rs.close();
            
            //エラーハンドリング。
            out.println("接続に成功しました。");
            }catch(SQLException e_sql){
                out.println("エラーが発生しました:"+ e_sql.toString());
            }catch(Exception e){
                out.println("エラーが発生しました:"+e.toString());
            }finally{
                if(cn != null || st != null){
                    try{
                    cn.close();
                    }catch(Exception e_con){
                    System.out.println(e_con.getMessage());
                    }
                }
            }
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet challenge11_2</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet challenge11_2 at " + request.getContextPath() + "</h1>");
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
