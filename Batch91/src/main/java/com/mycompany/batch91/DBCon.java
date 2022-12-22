/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.batch91;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Haiz
 */
public class DBCon {

    /**
     *
     * @return
     */
    public Connection getConnection(){
        Connection con =null;
        try{
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/storedb?serverTimezone=UTC","root","");
        }catch(SQLException ex){
         //Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }
    return con;
    }
    
}
