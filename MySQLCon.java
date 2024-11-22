import java.sql.*;
import java.util.Scanner;

public class MySQLCon {

    public static void main(String args[]) {
        Connection con = null;
        PreparedStatement stmt = null;  // Change Statement to PreparedStatement

        try {
            // Load the MySQL JDBC Driver
            Class.forName("com.mysql.jdbc.Driver"); // Updated driver class name
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sakila?useSSL=false", "root", "Computergeek27!");

            Scanner sc = new Scanner(System.in);

            System.out.print("Enter either 'delete', 'update', or 'insert': ");
            String userResponse = sc.nextLine();
            String againResponse;
            if (userResponse.equalsIgnoreCase("update")) {
                // Fetch and display existing records using the Select query
                String selectQuery = "SELECT firstName, lastName, dateOfBirth FROM patientData;";
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
                do {
                    System.out.print("Enter patient id: ");
                    int patientId = sc.nextInt();

                    System.out.print("Enter first name: ");
                    String firstName = sc.next();

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

                    // Insert new record using the PreparedStatement function
                    String insertQuery = "INSERT INTO patientData (patientId, firstName, lastName, dateOfBirth, address, city, email) VALUES (?, ?, ?, ?, ?, ?, ?)";
                    stmt = con.prepareStatement(insertQuery);

                    // Update setString values
                    stmt.setInt(1, patientId);
                    stmt.setString(2, firstName);
                    stmt.setString(3, lastName);
                    stmt.setDate(4, java.sql.Date.valueOf(dateOfBirth));
                    stmt.setString(5, address);
                    stmt.setString(6, city);
                    stmt.setString(7, email);

                    int rowsAffected = stmt.executeUpdate();

                    if (rowsAffected > 0) {
                        System.out.println("Record inserted successfully.");
                    } else {
                        System.out.println("Record insertion failed.");
                    }
                    System.out.print("Insert more data? 'Yes' or 'No'");
                    againResponse = sc.nextLine();
                } while(againResponse.equalsIgnoreCase("Yes"));
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
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            System.out.println("Class Not Found Exception: " + e.getMessage());
            e.printStackTrace();
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
