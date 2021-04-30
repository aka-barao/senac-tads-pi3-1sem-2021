/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.*;
import java.util.*;
import java.util.logging.Logger;

/**
 *
 * @author vinicius elias
 */

// https://docs.microsoft.com/pt-br/azure/azure-sql/database/connect-query-java

public class DB {

    private static Connection conexao = null;
    private static final Logger log;

    static {
        System.setProperty("java.util.logging.SimpleFormatter.format", "[%4$-7s] %5$s %n");
        log = Logger.getLogger(DB.class.getName());
    }

    public static Connection getConexao() {
        if (conexao == null) {
            try {
                log.info("Carregando propriedades da aplicação");
                Properties properties = new Properties();
                properties.load(DB.class.getClassLoader().getResourceAsStream("application.properties"));

                log.info("Conectando ao banco de dados");
                Connection conexao = DriverManager.getConnection(properties.getProperty("url"), properties);
                log.info("Teste de conexão com o banco de dados: " + conexao.getCatalog());
                log.info(conexao.getSchema());
            } catch (Exception e) {
                log.info("Falha ao conectar: " + e.getMessage());
            }
        }
        return conexao;
    }

    public static void fecharConexao() {
        if (conexao != null) {
            try {
                conexao.close();
            } catch (Exception e) {
                log.info("Falha ao fechar conexão: " + e.getMessage());
            }
        }
    }
}
