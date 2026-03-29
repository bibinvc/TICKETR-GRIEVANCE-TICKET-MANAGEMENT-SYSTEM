package com.gms.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

    private static final String DEFAULT_URL = "jdbc:mysql://localhost:3306/gms_DB?useSSL=false&serverTimezone=UTC";
    private static final String DEFAULT_USERNAME = "root";
    private static final String DEFAULT_PASSWORD = "";

    private static final String url = getConfig("gms.db.url", "GMS_DB_URL", DEFAULT_URL);
    private static final String uname = getConfig("gms.db.user", "GMS_DB_USER", DEFAULT_USERNAME);
    private static final String pass = getConfig("gms.db.password", "GMS_DB_PASSWORD", DEFAULT_PASSWORD);

    private ConnectionFactory() {
    }

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, uname, pass);
            System.out.println("DB connection established: " + conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    private static String getConfig(String propertyName, String envName, String fallback) {
        String propertyValue = System.getProperty(propertyName);
        if (propertyValue != null && !propertyValue.trim().isEmpty()) {
            return propertyValue.trim();
        }

        String envValue = System.getenv(envName);
        if (envValue != null && !envValue.trim().isEmpty()) {
            return envValue.trim();
        }

        return fallback;
    }
}
