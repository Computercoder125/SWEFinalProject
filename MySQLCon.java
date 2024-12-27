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

                // Prompt the user for the Patient ID of the record they want to update
                System.out.println("Enter the Patient ID of the record you want to update: ");
                int patientIdToUpdate = sc.nextInt(); // Scanner instance to get user input

                //go to next line
                sc.nextLine();

                // Prompt for new values
                System.out.println("Enter new First Name: ");
                String newFirstName = sc.nextLine();

                System.out.println("Enter new Last Name: ");
                String newLastName = sc.nextLine();

                System.out.println("Enter new Date of Birth (YYYY-MM-DD): ");
                String newDateOfBirth = sc.nextLine();

                System.out.println("Enter new Address: ");
                String newAddress = sc.nextLine();

                System.out.println("Enter new City: ");
                String newCity = sc.nextLine();

                System.out.println("Enter new Email: ");
                String newEmail = sc.nextLine();

                System.out.println("Enter new Date of Treatment (YYYY-MM-DD): ");
                String newDateOfTreatment = sc.nextLine();

                System.out.println("Enter new SSN: ");
                String newSSN = sc.nextLine();

                // Update query
                String updateQuery = "UPDATE patientData SET firstName = ?, lastName = ?, dateOfBirth = ?, address = ?, city = ?, email = ?, DateofTreatment = ?, SSN = ? WHERE patientID = ?";

                stmt = con.prepareStatement(updateQuery);

                // Set the parameters for the update query
                stmt.setString(1, newFirstName);
                stmt.setString(2, newLastName);
                stmt.setString(3, newDateOfBirth);
                stmt.setString(4, newAddress);
                stmt.setString(5, newCity);
                stmt.setString(6, newEmail);
                stmt.setString(7, newDateOfTreatment);
                stmt.setString(8, newSSN);
                stmt.setInt(9, patientIdToUpdate);

                // Execute the query after setting the values to update
                int rowsAffected = stmt.executeUpdate();
                if (rowsAffected > 0)
                {
                    System.out.println("Record updated successfully.");
                }
                else //if error
                {
                    System.out.println("No record found with Patient ID: " + patientIdToUpdate);
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
                System.out.println("Enter the Procedure ID of the record you want to update: ");
                int procedureIdToUpdate = sc.nextInt(); // Use a Scanner instance to get user input

                // Prompt for new values after a new line
                sc.nextLine();
                System.out.println("Enter new X-Ray Type: ");
                String newType = sc.nextLine();

                System.out.println("Enter new Reason: ");
                String newReason = sc.nextLine();

                System.out.println("Enter new X-Ray Length (in minutes): ");
                String newLength = sc.nextLine();

                // Update query
                String updateQuery = "UPDATE procedures SET XRayType = ?, Reason = ?, XRayLength = ? WHERE ProcedureID = ?";
                stmt = con.prepareStatement(updateQuery);

                // Set the parameters for the update
                stmt.setString(1, newType);
                stmt.setString(2, newReason);
                stmt.setString(3, newLength);
                stmt.setInt(4, procedureIdToUpdate);

                // Execute the update
                int rowsAffected = stmt.executeUpdate();
                if (rowsAffected > 0)
                {
                    System.out.println("Record updated successfully.");
                }
                else //if error
                {
                    System.out.println("No record found with Procedure ID: " + procedureIdToUpdate);
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
                } else
                {
                    System.out.println("No record found to delete.");
                }
            } else
            {
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
                System.out.println("Enter the Patient ID of the record you want to update: ");
                int patientIdToUpdate = sc.nextInt(); // Use a Scanner instance to get input

                // Go to next line and then ask user for new values in the table.
                sc.nextLine();
                System.out.println("Enter new Date (YYYY-MM-DD): ");
                String newDate = sc.nextLine();

                System.out.println("Enter new Xray Type: ");
                String newXrayType = sc.nextLine();

                System.out.println("Enter new Diagnosis: ");
                String newDiagnosis = sc.nextLine();

                // Update statement
                String updateQuery = "UPDATE patientrecord SET Date = ?, XrayType = ?, Diagnosis = ? WHERE patientID = ?";
                stmt = con.prepareStatement(updateQuery);

                // Set parameters to call setString method
                stmt.setString(1, newDate);
                stmt.setString(2, newXrayType);
                stmt.setString(3, newDiagnosis);
                stmt.setInt(4, patientIdToUpdate);

                // Execute the update
                int rowsAffected = stmt.executeUpdate();
                if (rowsAffected > 0)
                {
                    System.out.println("Record updated successfully.");
                }
                else //if error
                {
                    System.out.println("No record found with Patient ID: " + patientIdToUpdate);
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
