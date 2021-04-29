/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Vinicius Elias
 */
// https://docs.microsoft.com/pt-br/azure/azure-sql/database/connect-query-java

import java.sql.*;
import java.util.*;
import java.util.logging.Logger;

public class TesteAzureDB {

    private static final Logger log;

    static {
        System.setProperty("java.util.logging.SimpleFormatter.format", "[%4$-7s] %5$s %n");
        log = Logger.getLogger(TesteAzureDB.class.getName());
    }

    public static void main(String[] args) throws Exception {
        log.info("Loading application properties");
        Properties properties = new Properties();
        properties.load(TesteAzureDB.class.getClassLoader().getResourceAsStream("application.properties"));

        log.info("Connecting to the database");
        Connection connection = DriverManager.getConnection(properties.getProperty("url"), properties);
        log.info("Database connection test: " + connection.getCatalog());
        log.info(connection.getSchema());

        /*
        Todo todo = new Todo(1L, "configuration", "congratulations, you have set up JDBC correctly!", true);
        insertData(todo, connection);
        todo = readData(connection);
        todo.setDetails("congratulations, you have updated data!");
        updateData(todo, connection);
        deleteData(todo, connection);
         */
        log.info("Read data");
        PreparedStatement readStatement = connection.prepareStatement("SELECT * FROM cliente;");
        ResultSet resultSet = readStatement.executeQuery();
        if (!resultSet.next()) {
            log.info("There is no data in the database!");
        }
        
        /*
        Todo todo = new Todo();
        todo.setId(resultSet.getLong("id"));
        todo.setDescription(resultSet.getString("description"));
        todo.setDetails(resultSet.getString("details"));
        todo.setDone(resultSet.getBoolean("done"));*/
        
        log.info("Data read from the database: " + 
                resultSet.getString("nome") + ";" +
                resultSet.getInt("rg") + ";" +
                resultSet.getInt("cpf") + ";" +
                resultSet.getInt("telefone") + ";" +
                resultSet.getString("email"));

        log.info("Closing database connection");
        connection.close();
    }
}
