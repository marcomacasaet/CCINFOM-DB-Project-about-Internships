//package com.example.jxsql;

import java.util.ArrayList;
import java.util.List;
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
        String items[] = {"branch_id", "branch_name", "location"};

        // vvv For testing vvv
        //addInternshipBranchRecord("Crash Dummies Inc.", "Abandoned Factory N-67");
        //delInternshipBranchRecord("0003", "", "");
        //updInternshipBranchRecord("0002", "", "", "", "Ultimate Talent Execution Branch", "Eden's Garden Academy");

        getInternshipBranchRecord(items, "","",""); //Selects ALL from internship branch records
        //...

        // Close DB connection
        try{
            conn.close();
        } catch (SQLException ex){
            System.out.println("Error encountered in closing DB connection.");
        }
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
     * @param items Items to be selected from record
     * @param branch_id Unique ID of internship branch
     * @param branch_name Name of internship branch
     * @param location Name of location
     */
    public static void getInternshipBranchRecord(String items[], String branch_id, String branch_name, String location){
        StringBuilder query = new StringBuilder();  // Var for holding string of SQL query statement
        List<Object> params = new ArrayList<>();    // List that contains available, non-blank conditions for WHERE statements

        // Append query command (in this method, it is SELECT)
        query.append(" SELECT ");

        // Append columns to be selected and displayed in query
        for(String item : items){
            query.append(item);
            if(item.compareTo(items[items.length-1])==0)
                break;
            query.append(", ");
        }
        // Append name of table and WHERE clause ("0=0" to allow for future AND statements)
        query.append(" FROM internship_branch_records WHERE 0=0 ");

        // Append conditions / params to query that have actual values inputted (ie. not null and not empty)
        if(branch_id!=null && !branch_id.isBlank()){
            query.append(" AND branch_id = ? ");
            params.add(branch_id.trim());
        }
        if(branch_name!=null && !branch_name.isBlank()){
            query.append(" AND branch_name = ?");
            params.add(branch_name.trim());
        }
        if(location!=null && !location.isBlank()){
            query.append(" AND location = ? ");
            params.add(location.trim());
        }

        try{
            PreparedStatement stmt = conn.prepareCall(query.toString());

            // Bind param values to the SQL statement
            for (int i = 0; i < params.size(); i++) {
                stmt.setObject(i + 1, params.get(i));
            }
            //For fetching multiple records; retrieve data only (ie. SELECT)
            ResultSet rs;
            rs = stmt.executeQuery();

            // For printing out inputted values in cmd
            while(rs.next()){
                String ID = rs.getString("branch_id");
                String NAME = rs.getString("branch_name");
                String LOCATION = rs.getString("location");
                System.out.println(ID + ", " + NAME + ", " + LOCATION);
            }

            rs.close();
            stmt.close();

        } catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    }

    /**
     * Inserts a new internship branch tuple.
     * @param branch_name Name of internship branch
     * @param location Name of location
     */
    public static void addInternshipBranchRecord(String branch_name, String location){
        StringBuilder query = new StringBuilder();
        query.append(" INSERT INTO internship_branch_records (branch_name, location) VALUES (?, ?)");
        try{
            PreparedStatement stmt = conn.prepareCall(query.toString());
            stmt.setString(1, branch_name);
            stmt.setString(2, location);
            System.out.println(stmt);

            int rowsAffected = stmt.executeUpdate();
            System.out.println("INSERT operation successfully executed for " + rowsAffected + " row(s).");

            stmt.close();

        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    }

    /**
     * Deletes a given internship branch record.
     * @param branch_id Unique ID of internship branch
     * @param branch_name Name of internship branch
     * @param location Name of location
     */
    public static void delInternshipBranchRecord(String branch_id, String branch_name, String location){
        StringBuilder query = new StringBuilder();
        List<Object> params = new ArrayList<>();
        query.append(" DELETE FROM internship_branch_records WHERE 0=0");

        // Append conditions to query that have actual values inputted (ie. not null and not empty)
        if(branch_id!=null && !branch_id.isBlank()){
            query.append(" AND branch_id = ? ");
            params.add(branch_id.trim());
        }
        if(branch_name!=null && !branch_name.isBlank()){
            query.append(" AND branch_name = ?");
            params.add(branch_name.trim());
        }
        if(location!=null && !location.isBlank()){
            query.append(" AND location = ? ");
            params.add(location.trim());
        }

        try{
            PreparedStatement stmt = conn.prepareCall(query.toString());

            // Bind param values to the SQL statement
            for (int i = 0; i < params.size(); i++) {
                stmt.setObject(i + 1, params.get(i));
            }
            
            int rowsAffected = stmt.executeUpdate();
            System.out.println("DELETE operation successfully executed for " + rowsAffected + " row(s).");

            stmt.close();
            
        } catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    }

    /**
     * Updates an already-existing internship branch tuple.
     * @param where_branch_id ID number to be used in selecting the tuple to update
     * @param where_branch_name Branch name to be used in selecting the tuple to update
     * @param where_location Location name to be used in selecting the tuple to update
     * @param set_branch_id ID number to be set to the selected tuple
     * @param set_branch_name Branch name to be set to the selected tuple
     * @param set_location Location name to be set to the selected tuple
     */
    public static void updInternshipBranchRecord(String where_branch_id, String where_branch_name, String where_location,
    String set_branch_id, String set_branch_name, String set_location){

        StringBuilder query = new StringBuilder();
        List<Object> params = new ArrayList<>();
        query.append(" UPDATE internship_branch_records SET branch_id = branch_id ");

        // Append conditions to query that have actual values inputted (ie. not null and not empty)
        if(set_branch_id!=null && !set_branch_id.isBlank()){
            query.append(", branch_id = ? ");
            params.add(set_branch_id.trim());
        }
        if(set_branch_name!=null && !set_branch_name.isBlank()){
            query.append(", branch_name = ?");
            params.add(set_branch_name.trim());
        }
        if(set_location!=null && !set_location.isBlank()){
            query.append(", location = ? ");
            params.add(set_location.trim());
        }

        query.append(" WHERE 0=0 ");
        // Append conditions to query that have actual values inputted (ie. not null and not empty)
        if(where_branch_id!=null && !where_branch_id.isBlank()){
            query.append(" AND branch_id = ? ");
            params.add(where_branch_id.trim());
        }
        if(where_branch_name!=null && !where_branch_name.isBlank()){
            query.append(" AND branch_name = ?");
            params.add(where_branch_name.trim());
        }
        if(where_location!=null && !where_location.isBlank()){
            query.append(" AND location = ? ");
            params.add(where_location.trim());
        }

        System.out.println(query+"\n");

        try{
            PreparedStatement stmt = conn.prepareCall(query.toString());

            // Bind param values to the SQL statement
            for (int i = 0; i < params.size(); i++) {
                stmt.setObject(i + 1, params.get(i));
            }
            
            int rowsAffected = stmt.executeUpdate();
            System.out.println("UPDATE operation successfully executed for " + rowsAffected + " row(s).");

            stmt.close();
            
        } catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    }

    // CURRENT RECORDING TIMESTAMP  : 1:53:29
}