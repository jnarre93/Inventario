/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Acceso_a_Datos;

import Datos.Rol;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author Johnny
 */
public class ServicioRol extends Conexion {

    public boolean registrar(Rol pro) { //¨Create¨
        PreparedStatement ps = null;
        con = getConexion();

        String sql = "INSERT INTO Rol (id_rol,nombre)"
                + "VALUES(?,?)";

        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, pro.getId());
            ps.setString(2, pro.getNombre());
            ps.execute();
            return true;
        } catch (Exception e) {
            System.err.println(e);
            return false;
        } finally {
            try {
                con.close();
            } catch (Exception e) {
                System.err.println(e);
            }
        }
    }

    public boolean Buscar(Rol rol) {
        PreparedStatement ps = null;
        con = getConexion();
        String sql = "SELECT * from Rol WHERE id_Rol= ?";

        try {
            ps = con.prepareStatement(sql);

            ps.setInt(1, rol.getId());
            rs = ps.executeQuery();

            if (rs.next()) {
                rol.setId(Integer.parseInt(rs.getString("id_Rol")));
                rol.setNombre(rs.getString("nombre"));
                return true;
            }

            return false;

        } catch (Exception e) {
            System.err.println("No se pudo consultar el registro a la base de datos, error: " + e);
            return false;
        } finally {
            try {
                con.close();
            } catch (Exception e) {
                System.err.println("No se pudo cerrar la conexion");
            }
        }

    }

    public boolean Modificar(Rol rol) {
        PreparedStatement ps = null;
        con = getConexion();
        String sql = "UPDATE Inventario.Rol SET nombre =? WHERE id_Rol =?";

        try {
            ps = con.prepareStatement(sql);

            ps.setString(1, rol.getNombre());
            ps.setInt(2, rol.getId());
            ps.execute();
            return true;

        } catch (Exception e) {
            System.err.println("No se pudo modificar el registro a la base de datos, error: " + e);
            return false;
        } finally {
            try {
                con.close();
            } catch (Exception e) {
                System.err.println("No se pudo cerrar la conexion");
            }
        }

    }

    public boolean Eliminar(Rol rol) {
        PreparedStatement ps = null;
        con = getConexion();
        String sql = "DELETE from Rol WHERE id_Rol =?";

        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, rol.getId());

            ps.execute();
            return true;

        } catch (Exception e) {
            System.err.println("No se pudo eliminar el registro a la base de datos, error: " + e);
            return false;
        } finally {
            try {
                con.close();
            } catch (Exception e) {
                System.err.println("No se pudo cerrar la conexion");
            }
        }

    }

}
