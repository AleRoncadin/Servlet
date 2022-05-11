//Roncadin Alessandro 5BIA 12/05/2022

package database;

import java.io.*; 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class dbHelper {    
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";  
    private static final String DBurl = "jdbc:mysql://localhost:3306/userlogin";
    private static final String user = "login";
    private static final String pwd = "pippo";    
    private Connection con;
    
    public dbHelper() {
      con = null;
      try {
      	Class.forName(DRIVER);  // check if library is loaded
      	System.out.println("Driver Connector/J trovato!");
      }
      catch (ClassNotFoundException e) {
      	System.out.println("WARNING: driver Connector/J NON trovato!");
      }
    }
    /* CONNESSIONE DB */
    public void connect() throws SQLException {   	 
   	 con = DriverManager.getConnection(DBurl, user, pwd);

    }
    public void disconnect() throws SQLException {
        if(con != null)
             con.close();
    }    
    /* DB API */    
    public boolean logon(String email, String pwd) throws SQLException {
   	 String query = "SELECT * FROM credentials WHERE email='"+email+"' AND pwd=md5('"+pwd+"')";
   	 Statement sql = con.createStatement();
   	 ResultSet res = sql.executeQuery(query);
   	 if(res.next())  // if query result contains a row
   		 return true;
   	 return false;
    }
}
