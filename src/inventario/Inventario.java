/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inventario;

import Acceso_a_Datos.Conexion;
import Acceso_a_Datos.ServicioRol;
import Datos.Rol;

/**
 *
 * @author Johnny
 */
public class Inventario {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here //Para probar la conexion, si no da exito puede ser el driver!
      //  Conexion conexionPrueba = new Conexion();
      //  conexionPrueba.getConexion();
        
        Rol rolPrueba = new Rol(123, "Secretaria");
        ServicioRol sr = new ServicioRol();
       // sr.registrar(rolPrueba); //Luego de hacer esto puedo ir a la base y hacer un select * y probar que ese rol se creo correctamente
        //System.out.println(sr.Buscar(rolPrueba));
        //sr.Modificar(rolPrueba);
      sr.Eliminar(rolPrueba);
    }
    
}
