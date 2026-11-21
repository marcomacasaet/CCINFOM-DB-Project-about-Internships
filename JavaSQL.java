//package com.example.jxsql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.sql.Statement;

/**
 * Unpaid Internship JavaSQL Program.
 * @author Benjamin Herbert Co
 * @author Kristine Claire Gan
 * @author Marco Macasaet
 * @author Yvan Sacramento
 */
public class JavaSQL{

    // Connection string
    private static final String URL = "jdbc:mysql://localhost:3306/unpaid_internship";
    private static final String USER = "root";
    private static final String PASSWORD = ""; // Add password for MySQL/Postgres

    private static Connection conn = null;

    /**
     * Main method.
     * @param args CMD Line Arguments
     */
    public static void main(String[] args) {
        System.out.println("Starting DB Connection...");
        connectDB();
        getInternshipBranchRecord("","",""); //Selects ALL from internship branch records
        //...
    } 

    /**
     * Method that must be run first to establish a connection with the database.
     */
    public static void connectDB(){
        try{
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connection successfully established!");
        } catch (SQLException ex){
            // System.getLogger(JavaSQL.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
            System.out.println("Unsuccessful Connection. Please try again.");
            System.out.println("--> Kindly recheck the USER and PASSWORD inputted in the program \n    to ensure it matches with that of your local Database-ish.\n");
        }
    }

    /**
     * Gets record of internship branches based on parameters.
     * @param location Name of location
     */
    public static void getInternshipBranchRecord(String branch_id, String branch_name, String location){
        StringBuilder query = new StringBuilder();
        query.append(" SELECT * ");
        query.append(" FROM internship_branch_records ");
        query.append(" WHERE    branch_id = ?       AND ");
        query.append("          branch_name = ?     AND ");
        query.append("          location = ? ");

        try{
            PreparedStatement stmt;
            stmt = conn.prepareCall(query.toString());
            stmt.setString(1, branch_id);
            stmt.setString(2, branch_name);
            stmt.setString(3, location);

            //For fetching multiple records
            ResultSet rs;
            rs = stmt.executeQuery();

            //For checking if a specific record exists
            //stmt.execute();

            //For INSERT, DELETE, and UPDATE instructions, tracking of no. of rows updated
            //stmt.executeUpdate();

            while(rs.next()){
                String ID = rs.getString("branch_id");
                String NAME = rs.getString("branch_name");
                String LOCATION = rs.getString("location");
                System.out.println(ID + ", " + NAME + ", " + LOCATION);
            }

            rs.close();
            stmt.close();
            conn.close();

        } catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    }

    // CURRENT RECORDING TIMESTAMP  : 1:53:29
}