/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BJ;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import BJ.*;
/**
 *
 * @author yoshina
 */
public class Blackjack extends HttpServlet {

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
           Dealer Dr=new Dealer();
           User us=new User();
        try (PrintWriter out = response.getWriter()) {

          //使うメソッドの抽出。
           Dr.setcard(Dr.deal());
           us.setcard(us.deals());
           
            Dr.open();
            us.open();
            Dr.checksum();
            us.checksum();
            
            //16未満でhitするようにする。
            if(Dr.open()<16){
            Dr.hit();
            Dr.setcard(Dr.hit());}
            
            if(us.open()<16){
            us.hit();
            us.setcard(us.hit());
            }
            
            /* TODO out\put your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Blackjack</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("ディラーのカードは"+Dr.mycard+"<br>合計は"+Dr.open()+"です。");
            out.println("<br>貴方のカードは"+us.mycard+"<br>合計は"+us.open()+"です。<br>");
            if(Dr.open()>21&&us.open()<21){
                        out.println("<br>貴方の勝利です！");
              }else if(Dr.open()<21&&us.open()>21){
                        out.println("<br>貴方の負けです！");
              }else if(Dr.open()>21&&us.open()>21){
                       out.println("<br>引き分けです！");
             }else if(Dr.open()<21&&us.open()<21&&Dr.open()>us.open()){
                        out.println("<br>ディーラーの勝利です！");
              }else if(Dr.open()<21&&us.open()<21&&us.open()>Dr.open()){
                       out.println("<br>貴方の勝利です！");
              }else{
                      out.println("<br>引き分けです！");
              }
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
