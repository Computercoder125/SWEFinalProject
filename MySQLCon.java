package mySQLCon;

import java.sql.*;
import java.util.Scanner;

public class MySqlCon {

    public static void main(String args[]) {
        Connection con = null;
        PreparedStatement stmt = null;  // Change Statement to PreparedStatement
        Scanner sc = new Scanner(System.in);


        System.out.println("Enter table 'patientdata', 'patientrecord', or 'procedures': ");
        String userTable = sc.nextLine();

        if (userTable.equalsIgnoreCase("patientdata")){
            patientData();
        } else if (userTable.equalsIgnoreCase("procedures")){
            procedures();
        } else if (userTable.equalsIgnoreCase("patientrecord")){
            patientRecord();
        }
        else
        {
            System.out.println("Must select one of the tables above");
        }
    }

    public static void patientData(){
        Connection con = null;
        PreparedStatement stmt = null;  // Change Statement to PreparedStatement
        Scanner sc = new Scanner(System.in);
        try {
            // Load the MySQL JDBC Driver
            Class.forName("com.mysql.jdbc.Driver"); // Updated driver class name
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gorduffchau?useSSL=false", "root", "Computergeek27!");

            System.out.print("Enter either 'delete', 'update', or 'insert': ");
            String userResponse = sc.nextLine();

            if (userResponse.equalsIgnoreCase("update")) {
                // Fetch and display existing records using the Select query
                String selectQuery = "SELECT firstname, lastname, dateofBirth FROM patientData";
                stmt = con.prepareStatement(selectQuery);
                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    String firstName = rs.getString("firstName");
                    String lastName = rs.getString("lastName");
                    String dateOfBirth = rs.getString("dateOfBirth");

                    // Display records
                    String recordLine = "Name: " + firstName + " " + lastName + ", DOB: " + dateOfBirth;
                    System.out.println(recordLine);
                }
            }
            else if (userResponse.equalsIgnoreCase("insert")) {
                // Get values for each field from the user
                System.out.print("Enter patient id: ");
                int PatientId = Integer.parseInt(sc.nextLine());

                System.out.print("Enter first name: ");
                String firstName = sc.nextLine();

                System.out.print("Enter last name: ");
                String lastName = sc.nextLine();

                System.out.print("Enter date of birth (YYYY-MM-DD): ");
                String dateOfBirth = sc.nextLine();

                System.out.print("Enter address: ");
                String address = sc.nextLine();

                System.out.print("Enter city: ");
                String city = sc.nextLine();

                System.out.println("Enter an email: ");
                String email = sc.nextLine();

                System.out.println("Enter Date of Treatment: ");
                String DateOfTreatment = sc.nextLine();

                System.out.println("Enter Social Security Number: ");
                long ssn = sc.nextLong();

                // Insert new record using the PreparedStatement function
                String insertQuery = "INSERT INTO patientdata (PatientId, firstName, lastName, dateOfBirth, address, city, email, DateOfTreatment, SSN) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
                stmt = con.prepareStatement(insertQuery);

                // Update setString values

                stmt.setInt(1, PatientId);
                stmt.setString(2, firstName);
                stmt.setString(3, lastName);
                stmt.setString(4, dateOfBirth);
                stmt.setString(5, address);
                stmt.setString(6, city);
                stmt.setString(7, email);
                stmt.setString(8, DateOfTreatment);
                stmt.setLong(9, ssn);

                int rowsAffected = stmt.executeUpdate();

                if (rowsAffected > 0) {
                    System.out.println("Record inserted successfully.");
                } else {
                    System.out.println("Record insertion failed.");
                }
            }
            else if (userResponse.equalsIgnoreCase("delete")) {

                System.out.print("Enter the first name of the patient to delete: ");
                String firstNameToDelete = sc.nextLine();

                String deleteQuery = "DELETE FROM patientData WHERE firstName = ?";
                stmt = con.prepareStatement(deleteQuery);
                stmt.setString(1, firstNameToDelete);

                // Execute the delete query
                int rowsDeleted = stmt.executeUpdate();
                if (rowsDeleted > 0) {
                    System.out.println("Record deleted successfully.");
                } else {
                    System.out.println("No record found to delete.");
                }
            } else {
                //checking for invalid input
                System.out.println("Invalid input. Please enter 'update', 'insert', or 'delete'.");
            }

        } catch (SQLException e) {
            System.out.println("SQL Exception: " + e.getMessage());
            //e.printStackTrace();
        } catch (ClassNotFoundException e) {
            System.out.println("Class Not Found Exception: " + e.getMessage());
            //e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (SQLException ex) {
                System.out.println("Error closing resources: " + ex.getMessage());
            }
        }
    }

    public static void procedures(){
        Connection con = null;
        PreparedStatement stmt = null;  // Change Statement to PreparedStatement
        Scanner sc = new Scanner(System.in);
        try {
            // Load the MySQL JDBC Driver
            Class.forName("com.mysql.jdbc.Driver"); // Updated driver class name
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gorduffchau?useSSL=false", "root", "Computergeek27!");

            System.out.print("Enter either 'delete', 'update', or 'insert': ");
            String userResponse = sc.nextLine();

            if (userResponse.equalsIgnoreCase("update")) {
                // Fetch and display existing records using the Select query
                String selectQuery = "SELECT XRayType, Reason, XRayLength FROM procedures";
                stmt = con.prepareStatement(selectQuery);
                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    String type = rs.getString("XRayType");
                    String reason = rs.getString("Reason");
                    String length = rs.getString("XRayLength");

                    // Display records
                    String recordLine = "X-Ray Type: " + type + ", Reason: " + reason + ", Length: " + length + " minutes";
                    System.out.println(recordLine);
                }
            }
            else if (userResponse.equalsIgnoreCase("insert")) {
                // Get values for each field from the user
                System.out.print("Enter Procedure ID: ");
                int procedureID = sc.nextInt();

                // included as it caused bugs from scanning any ints
                sc.nextLine();

                System.out.print("Enter X-Ray Type: ");
                String xRayType = sc.nextLine();

                System.out.print("Enter reason: ");
                String reason = sc.nextLine();

                System.out.print("Enter doctor ID: ");
                int doctorID = sc.nextInt();

                System.out.print("Enter X-Ray Length in minutes: ");
                int length = sc.nextInt();

                // Insert new record using the PreparedStatement function
                String insertQuery = "INSERT INTO procedures (ProcedureID, XRayType, Reason, DoctorID, XRaylength) VALUES (?, ?, ?, ?, ?)";
                stmt = con.prepareStatement(insertQuery);

                // Update setString values
                stmt.setInt(1, procedureID);
                stmt.setString(2, xRayType);
                stmt.setString(3, reason);
                stmt.setInt(4, doctorID);
                stmt.setInt(5, length);

                int rowsAffected = stmt.executeUpdate();

                if (rowsAffected > 0) {
                    System.out.println("Record inserted successfully.");
                } else {
                    System.out.println("Record insertion failed.");
                }
            }
            else if (userResponse.equalsIgnoreCase("delete")) {

                System.out.print("Enter the X-Ray Type: ");
                String typeToDelete = sc.nextLine();

                // chose X-Ray Type to make it easier to pick then procedure ID
                String deleteQuery = "DELETE FROM procedures WHERE XRayType = ?";
                stmt = con.prepareStatement(deleteQuery);
                stmt.setString(1, typeToDelete);

                // Execute the delete query
                int rowsDeleted = stmt.executeUpdate();
                if (rowsDeleted > 0) {
                    System.out.println("Record deleted successfully.");
                } else {
                    System.out.println("No record found to delete.");
                }
            } else {
                //checking for invalid input
                System.out.println("Invalid input. Please enter 'update', 'insert', or 'delete'.");
            }

        } catch (SQLException e) {
            System.out.println("SQL Exception: " + e.getMessage());
            //e.printStackTrace();
        } catch (ClassNotFoundException e) {
            System.out.println("Class Not Found Exception: " + e.getMessage());
            //e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (SQLException ex) {
                System.out.println("Error closing resources: " + ex.getMessage());
            }
        }
    }

    public static void patientRecord(){
        Connection con = null;
        PreparedStatement stmt = null;  // Change Statement to PreparedStatement
        Scanner sc = new Scanner(System.in);
        try {
            // Load the MySQL JDBC Driver
            Class.forName("com.mysql.jdbc.Driver"); // Updated driver class name
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gorduffchau?useSSL=false", "root", "Computergeek27!");

            System.out.print("Enter either 'delete', 'update', or 'insert': ");
            String userResponse = sc.nextLine();

            if (userResponse.equalsIgnoreCase("update")) {
                // Fetch and display existing records using the Select query
                String selectQuery = "SELECT patientId, Date, XrayType, Diagnosis FROM patientRecord;";
                stmt = con.prepareStatement(selectQuery);
                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    int patientId = rs.getInt("patientID");
                    String date = rs.getString("Date");
                    String XrayType = rs.getString("XrayType");
                    String Diagnosis = rs.getString("Diagnosis");

                    // Display records
                    String recordLine = "ID: " + patientId + ", Date of Xray: " + date + ", Xray Type: " + XrayType + ", Diagnosis: " + Diagnosis;
                    System.out.println(recordLine);
                }
            }
            else if (userResponse.equalsIgnoreCase("insert")) {
                // Get values for each field from the user
                System.out.print("Enter patient id: ");
                int PatientId = Integer.parseInt(sc.nextLine());

                System.out.print("Enter date of Xray (YYYY-MM-DD): ");
                String Date = sc.nextLine();

                System.out.print("Enter Xray Type: ");
                String XrayType = sc.nextLine();

                System.out.print("Enter Diagnosis: ");
                String Diagnosis = sc.nextLine();


                // Insert new record using the PreparedStatement function
                String insertQuery = "INSERT INTO patientRecord (PatientId, Date, XrayType, Diagnosis) VALUES (?, ?, ?, ?)";
                stmt = con.prepareStatement(insertQuery);

                // Update setString values

                stmt.setInt(1, PatientId);
                stmt.setString(2, Date);
                stmt.setString(3, XrayType);
                stmt.setString(4, Diagnosis);

                int rowsAffected = stmt.executeUpdate();

                if (rowsAffected > 0) {
                    System.out.println("Record inserted successfully.");
                } else {
                    System.out.println("Record insertion failed.");
                }
            }
            else if (userResponse.equalsIgnoreCase("delete")) {

                System.out.print("Enter the ID of patient to delete records: ");
                int patientIDdelete = sc.nextInt();

                String deleteQuery = "DELETE FROM patientRecord WHERE (patientId = ?)";
                stmt = con.prepareStatement(deleteQuery);
                stmt.setInt(1, patientIDdelete);

                // Execute the delete query
                int rowsDeleted = stmt.executeUpdate();
                if (rowsDeleted > 0) {
                    System.out.println("Record deleted successfully.");
                } else {
                    System.out.println("No record found to delete.");
                }
            } else {
                //checking for invalid input
                System.out.println("Invalid input. Please enter 'update', 'insert', or 'delete'.");
            }

        } catch (SQLException e) {
            System.out.println("SQL Exception: " + e.getMessage());
            //e.printStackTrace();
        } catch (ClassNotFoundException e) {
            System.out.println("Class Not Found Exception: " + e.getMessage());
            //e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (SQLException ex) {
                System.out.println("Error closing resources: " + ex.getMessage());
            }
        }
    }
}
