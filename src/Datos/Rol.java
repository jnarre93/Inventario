/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

/**
 *
 * @author Johnny
 */
public class Rol {

    public Rol(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }
    
    int id;
    String nombre;


    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }
    
    
    public void setId(int id) {
        this.id = id;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
