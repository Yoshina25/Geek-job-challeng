/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zairopack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author yoshina
 */
@WebServlet(name = "servmenu", urlPatterns = {"/servmenu"})
public class servmenu extends HttpServlet {

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
        
            String obj = request.getParameter("objct");
            String Id = request.getParameter("objID");
            String sum = request.getParameter("sum");
            String shw = request.getParameter("show");
        
 
        //セッションを利用するための処理。
        HttpSession session = request.getSession(true);
        String in= " ";    
            
        
         try(PrintWriter out = response.getWriter();){
        
            Connection cn = null;
            PreparedStatement st = null;
            ResultSet date = null;
          
          
        try
        {
            
            //データーベースに接続する。
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/zaiko","yukizakura","pass");
          
            
                //商品登録処理。
                //空欄がある場合、商品追加は行わない。
                if(obj.equals("") || Id.equals("") || sum.equals("")){
                    
                    out.println("<Div align = center>"); 
                    out.println("<br>"+"入力欄に空白があったため、商品情報の追加は行われませんでした。"+
                            "<br>"+"<br>");
                    out.println("</Div>");
                
                }else if(!obj.equals("") && !Id.equals("") && !sum.equals("")){
                    
                    int ID = Integer.parseInt(Id);
                    int sm = Integer.parseInt(sum);
                
                    //商品をデーターベースに追加する処理。
                    st = cn.prepareStatement("insert into zaiko values(?,?,?)");
                    
                    st.setInt(1,ID);
                    st.setString(2,obj);
                    st.setInt(3, sm);
                
                    st.executeUpdate();
                
                
                    //入力情報を出力する処理。
                    //<Div align = center>は中央表示、<HR width = 300 align = center>はラインを表示させる処理。
                    st = cn.prepareStatement("select * from zaiko where ID  = ?");
                    st.setInt(1, ID);
                
                    date = st.executeQuery();
                
                     while(date.next()){
                        out.println("<Div align = center>");
                        out.println("以下の情報が更新されました。");
                        out.println("<HR width = 300 align = center>");
                        out.println("商品ID:"+date.getInt("ID")+"<br>"+
                            "商品名:"+date.getString("obj")+"<br>"+
                            "在庫:"+date.getInt("sum")+"<br>"+"<br>");
                        out.println("<HR width = 300 align = center>");
                        out.println("</Div>");
                        } 
                }else{
                    
                out.println("<Div align = center>");    
                out.println("正常に動作しませんでした。");
                out.println("</Div>");
                }
            
                
                //yesにcheckが入った場合、全件表示させる。
                //<Div align = center>は中央表示、<HR width = 300 align = center>はラインを表示させる処理。
                if(shw.equals("yes")){
                    st = cn.prepareStatement("select * from zaiko");
            
                    date = st.executeQuery();
                    
                    
                    out.println("<Div align = center>");
                    out.print("<br>"+"<br>"+"<br>");
                    out.println("<HR width = 300 align = center>");
                    out.println("全件表示");
                    
                    
                        while(date.next()){
                            out.println("<Div align = center>");
                            out.println("<HR width = 300 align = center>");
                            out.println("商品ID:"+date.getInt("ID")+"<br>"+
                            "商品名:"+date.getString("obj")+"<br>"+
                            "在庫:"+date.getInt("sum"));
                            out.println("<HR width = 300 align = center>");
                            out.println("</Div>");
                        }
                }else{
                out.println(" ");
                }
                
                 out.println("<a href = './menu.jsp'>商品登録ページへ</a><br>");
                 out.println("<a href = './logout.jsp'>ログアウト</a>"+"<br>");
                
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
            out.println("<title>Servlet servmenu</title>");            
            out.println("</head>");
            out.println("<body>");
//            out.println("<h1>Servlet servmenu at " + request.getContextPath() + "</h1>");
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
