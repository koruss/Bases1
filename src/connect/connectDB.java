/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author Kenneth
 */


public class connectDB{
public static String host="jdbc:oracle:thin:@localhost:1521:ORCL";
    public static String uName="admin";
    public static String uPass="admin";
    public SimpleDateFormat dateFormat= new SimpleDateFormat("dd-MM-yyyy");
    public static Connection con=null;
    
    
    public static void insertPerson(String pIdentification,String pName, String pFirstLastName, String pSecondLastName,int pIdNationality, int pIdCommunity, String pEmail, String pTelephone) throws SQLException {
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_PERSON.INSERT_PERSON(?,?,?,?,?,?,?,?)}");
        System.out.println("asd");
        stmt.setString(1,pIdentification);
        stmt.setString(2,pName);
        stmt.setString(3,pFirstLastName);
        stmt.setString(4,pSecondLastName);
        stmt.setInt(5,pIdNationality);
        stmt.setInt(6,pIdCommunity);
        stmt.setString(7,pEmail);
        stmt.setString(8,pTelephone);
        stmt.execute();  
        
    }
}
