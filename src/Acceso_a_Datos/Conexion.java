/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Acceso_a_Datos;

import com.sun.istack.internal.logging.Logger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author andreachacon
 */
public class Conexion {

    private final String base = "Inventario"; //nombre de la base de datos
    private final String user = "root";
    private final String password = "135libertad";
    private final String url = "jdbc:mysql://localhost:3306/" + base;
    static Connection con;
    static Statement st;
    static ResultSet rs;

    public Connection getConexion() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection(this.url, this.user, this.password);
            System.out.println("Exito");

        } catch (SQLException e) {
            System.err.println(e);
        } catch (ClassNotFoundException ex) {
            //ogger.getLogger(user, type)
            System.err.println("Error");
        }
        return con;
    }

}
