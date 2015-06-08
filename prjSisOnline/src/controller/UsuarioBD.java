/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author thales
 */
public class UsuarioBD {
    private String Servidor;
    private String url;
    private String usuario;
    private String senha;
    
    public UsuarioBD(String Servidor, String url, String usuario, String senha){
        this.Servidor = Servidor;
        this.url = url;
        this.usuario = usuario;
        this.senha = senha;
    }
    
    public UsuarioBD(){
        this("com.mysql.jdbc.Driver", "jdbc:mysql://localhost:3306/suporte", "root", "");
    }

    public String getServidor() {
        return Servidor;
    }

    public void setServidor(String Servidor) {
        this.Servidor = Servidor;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    public boolean conexao(){
        java.sql.Connection con = null;
        try{
            Class.forName(Servidor);
            con = DriverManager.getConnection(url,usuario,senha);
            return true;
        } catch(ClassNotFoundException ex){
            JOptionPane.showMessageDialog(null, "Classe não encontrada: "+Servidor+"\n"+" Erro: "+ex.getMessage());
        }
        catch (SQLException ex){
            JOptionPane.showMessageDialog(null, "SQL ERRO: "+ex.getMessage());
        }
        return false;
    }
}
