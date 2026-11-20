//package com.example.jxsql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.sql.Statement;

/**
 * @author Benjamin Herbert Co
 * @author Kristine Claire Gan
 * @author Marco Macasaet
 * @author Yvan Sacramento
 */
public class JavaSQL{

    // Connection string
    private static final String URL = "jdbc:mysql://localhost:3306/unpaid_internship"; //Needs fixing ish
    private static final String USER = "root";
    private static final String PASSWORD = ""; // Add password for MySQL/Postgres

    private static Connection conn = null;

    /**
     * main
     * @param args CMD Line Arguments
     */
    public static void main(String[] args) {
        System.out.println("Starting DB Connection...");
        connectDB();
        //...
    } 

    /**
     * STEP 1: Connect to database
     */
    public static void connectDB(){
        try{
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connection successfully established!");
        } catch (SQLException ex){
            System.getLogger(JavaSQL.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
    }

    // CURRENT RECORDING TIMESTAMP  : 1:31:25
}