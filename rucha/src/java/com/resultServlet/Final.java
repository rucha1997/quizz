/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.resultServlet;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Rucha
 */
public class Final extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
           
            String stmt;
            ArrayList<Integer> a = new ArrayList<>();
            int i=2,count=0;
           HttpSession session=request.getSession(false);  
           
           
           String name=(String)session.getAttribute("name");
           System.out.println("Name fetched: "+name);
           
           
     Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "root"); // gets a new connection
 
                stmt="select * from info where Name=?"; 
                
		PreparedStatement ps = c.prepareStatement(stmt);
                
                //ps.setString(1,"q1");
                
                ps.setString(1, name);
                
                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {                    
                   a.add(rs.getInt("q1"));   
                   a.add(rs.getInt("q2"));      
                   a.add(rs.getInt("q3"));      
                   a.add(rs.getInt("q4"));      
                   a.add(rs.getInt("q5"));      
                   a.add(rs.getInt("q6"));      
                   a.add(rs.getInt("q7"));      
                   a.add(rs.getInt("q8"));      
                   a.add(rs.getInt("q9"));      
                   a.add(rs.getInt("q10"));                     
                }  
               for(int n : a)
               {                   
                  if(n==1)
                  {
                      ++count;
                  }
               }
                System.out.println("count: "+count);
                Integer coun = count;
                out.write(coun.toString());
                c.close();
           
          
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(marks.class.getName()).log(Level.SEVERE, null, ex);
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
