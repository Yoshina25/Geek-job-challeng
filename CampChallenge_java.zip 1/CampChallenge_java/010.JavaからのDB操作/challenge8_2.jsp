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
@WebServlet(urlPatterns = {"/challenge8_2"})
public class challenge8_2 extends HttpServlet {

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
        
        
        //データベースへのアクセス処理。
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/challengedb","yukizakura","pass");

               //検索したい名前をベータベースに渡す処理。                 
                st = cn.prepareStatement("select * from profiles where name like ?");
                st.setString(1,"%"+request.getParameter("Name")+"%");
                rs = st.executeQuery();
        
                //検索結果の出力。
                while(rs.next()){
                            out.println("ID:"+rs.getInt("profilesID")+"<br>"+
                            "名前:"+rs.getString("name")+"<br>"+
                            "電話番号:"+rs.getString("tell")+"<br>"+
                            "年齢:"+rs.getInt("age")+"<br>"+
                            "誕生日:"+rs.getString("birthday"));
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
                if(cn != null){
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
            out.println("<title>Servlet challenge8_2</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet challenge8_2 at " + request.getContextPath()+"</h1>");
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
