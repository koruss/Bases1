/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Frames;

import connect.connectDB;
import java.sql.SQLException;

/**
 *
 * @author Kenneth
 */
public class Main {
    
    
    public static void main(String[] args) throws SQLException{
        
       connect.connectDB.userValidation("Steven1211", "contrasena", 0);
        
    }
    
}
