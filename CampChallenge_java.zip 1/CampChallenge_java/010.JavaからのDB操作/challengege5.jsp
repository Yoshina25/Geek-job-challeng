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
@WebServlet(urlPatterns = {"/challengege1"})
public class challengege1 extends HttpServlet {

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
        
        //データベースへの接続管理。
        Connection db_con = null;
        PreparedStatement db_st = null;
        ResultSet db_rs = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            //データベースへの接続。
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/challengedb","yukizakura","pass");
            
            //格納課題のコード。入れると実行のたびに格納される。
//            db_st = db_con.prepareStatement("insert into profiles(profilesID,name,tell,age,birthday)values(5,'デイダラボッチ','110-119-115',1550,'1927-04-01')");
//            db_st.executeUpdate();
            
            //テーブルの全表示。
            db_st = db_con.prepareStatement("select * from profiles");
            db_rs = db_st.executeQuery();
            
            while(db_rs.next()){
                out.println("ID:"+db_rs.getInt("profilesID")+
                    "名前:"+db_rs.getString("name")+
                    "電話番号:"+db_rs.getString("tell")+
                    "年齢:"+db_rs.getInt("age")+
                    "誕生日:"+db_rs.getString("birthday")+"<br>");
            }
            
            //ID1のみ取得。
            db_st = db_con.prepareStatement("select * from profiles where profilesID = ?");
            
            db_st.setInt(1,1);
            db_rs = db_st.executeQuery();
           
            while(db_rs.next()){
                out.println("ID:"+db_rs.getInt("profilesID")+
                        "名前:"+db_rs.getString("name")+
                        "電話番号:"+db_rs.getString("tell")+
                        "年齢"+db_rs.getInt("age")+
                        "誕生日:"+db_rs.getString("birthday")+"<br>");
            }
            
            //名前に茂が含まれる人のみ取得。
            db_st = db_con.prepareStatement("select * from profiles where name like ?");
            
            db_st.setString(1, "%茂%");
            db_rs = db_st.executeQuery();
            
            while(db_rs.next()){
            out.println("ID:"+db_rs.getInt("profilesID")+
                    "名前:"+db_rs.getString("name")+
                    "電話番号:"+db_rs.getString("tell")+
                    "年齢:"+db_rs.getInt("age")+
                    "誕生日:"+db_rs.getString("birthday")+"<br>");
            }
            
            db_con.close();
            db_st.close();
            db_rs.close();
            
        //エラーハンドリング。
            out.println ("接続に成功しました。");    
        }catch(SQLException e_sql){
            out.println("接続時にエラーが発生しました"+e_sql.toString());
        }catch(Exception e){
            out.println("接続時にエラーが発生しました。"+e.toString());
        }finally{
            if(db_con != null || db_st != null){
                 try{             
                     db_con.close();
                    }catch(Exception e_con){
                      System.out.println(e_con.getMessage());
                    }
            }
        }
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet challengege1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet challengege1 at " + request.getContextPath() + "</h1>");
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
    }
    }// </editor-fold>



