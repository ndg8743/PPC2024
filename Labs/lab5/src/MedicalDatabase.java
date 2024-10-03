package Labs.lab5.src;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.SQLException;

public class MedicalDatabase {

    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306";
        String user = "root";
        String password = "password";  // Replace with your MySQL password

        try {
            // Explicitly load the MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("MySQL JDBC Driver successfully loaded.");

            try (Connection conn = DriverManager.getConnection(url, user, password);
                 Statement stmt = conn.createStatement()) {

                System.out.println("Connected to MySQL server.");

                // Log the attempt to create the database
                String createDatabase = "CREATE DATABASE IF NOT EXISTS medical_db";
                System.out.println("Attempting to create database with query: " + createDatabase);

                int result = stmt.executeUpdate(createDatabase);
                System.out.println("Database creation result: " + result);  // Should return 0 for successful DDL statements
                System.out.println("Database 'medical_db' created or already exists.");

                String dbUrl = "jdbc:mysql://localhost:3306/medical_db";
                try (Connection dbConn = DriverManager.getConnection(dbUrl, user, password);
                     Statement dbStmt = dbConn.createStatement()) {

                    System.out.println("Connected to 'medical_db' database.");

                    String createDoctorTable = "CREATE TABLE IF NOT EXISTS Doctor (" +
                            "doctorId BIGINT PRIMARY KEY AUTO_INCREMENT, " +
                            "firstName VARCHAR(50), " +
                            "lastName VARCHAR(50), " +
                            "email VARCHAR(100), " +
                            "specialties TEXT, " +
                            "salary DECIMAL(10, 2));";
                    dbStmt.execute(createDoctorTable);
                    System.out.println("Doctor table created or already exists.");

                    String createPatientTable = "CREATE TABLE IF NOT EXISTS Patient (" +
                            "patientId BIGINT PRIMARY KEY AUTO_INCREMENT, " +
                            "firstName VARCHAR(50), " +
                            "lastName VARCHAR(50), " +
                            "birthday DATE, " +
                            "ssn BIGINT, " +
                            "history TEXT, " +
                            "locked BOOLEAN DEFAULT false);";
                    dbStmt.execute(createPatientTable);
                    System.out.println("Patient table created or already exists.");

                    String createAppointmentTable = "CREATE TABLE IF NOT EXISTS Appointment (" +
                            "appointmentId BIGINT PRIMARY KEY AUTO_INCREMENT, " +
                            "appointmentDate DATE, " +
                            "appointmentTime TIME, " +
                            "patientId BIGINT, " +
                            "doctorId BIGINT, " +
                            "FOREIGN KEY (patientId) REFERENCES Patient(patientId), " +
                            "FOREIGN KEY (doctorId) REFERENCES Doctor(doctorId));";
                    dbStmt.execute(createAppointmentTable);
                    System.out.println("Appointment table created or already exists.");

                    String insertDoctor = "INSERT INTO Doctor (firstName, lastName, email, specialties, salary) " +
                                          "VALUES ('John', 'Doe', 'jdoe@med.com', 'Cardiology, Surgery', 150000.00);";
                    dbStmt.execute(insertDoctor);
                    System.out.println("Sample doctor inserted.");

                    String insertPatient = "INSERT INTO Patient (firstName, lastName, birthday, ssn, history, locked) " +
                                           "VALUES ('Jane', 'Smith', '1990-05-10', 123456789, 'Diabetes, Hypertension', false);";
                    dbStmt.execute(insertPatient);
                    System.out.println("Sample patient inserted.");

                    String insertAppointment = "INSERT INTO Appointment (appointmentDate, appointmentTime, patientId, doctorId) " +
                                               "VALUES ('2024-10-05', '10:30:00', 1, 1);";
                    dbStmt.execute(insertAppointment);
                    System.out.println("Sample appointment inserted.");

                } catch (SQLException e) {
                    System.out.println("Failed to connect to 'medical_db' or create tables.");
                    e.printStackTrace();
                }

            } catch (SQLException e) {
                System.out.println("Failed to connect to MySQL server.");
                e.printStackTrace();
            }

        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found.");
            e.printStackTrace();
        }
    }
}
