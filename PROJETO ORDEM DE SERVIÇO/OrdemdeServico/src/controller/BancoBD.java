

package controller;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import model.Cadastro;
import model.WebServiceCep;


public class BancoBD {
    
    
    private String Servidor;
    private String url;
    private String usuario;
    private String senha;

    public BancoBD(String Servidor, String url, String usuario, String senha) {
        this.Servidor = Servidor;
        this.url = url;
        this.usuario = usuario;
        this.senha = senha;
    }
   public BancoBD(){
       
       this("com.mysql.jdbc.Driver",
               "jdbc:mysql://localhost:3306/banco",
               "root","minas");
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
    }
    catch (ClassNotFoundException ex){
        JOptionPane.showMessageDialog(null,"Classe não encontrada:"+Servidor+"\n"+"Erro:"+ex.getMessage());
    }
    catch (SQLException ex){
        JOptionPane.showMessageDialog(null,"SQL ERRO:"+ex.getMessage());
    }
        return false;
    }
    
    public void buscaCep() {
        WebServiceCep webServiceCep;
        webServiceCep = WebServiceCep.searchCep(Cep.getText());

        //caso a busca ocorra bem, imprime os resultados.
        if (webServiceCep.wasSuccessful()) {
            
            r1.setText(webServiceCep.getLogradouroFull());
            c1.setText(webServiceCep.getCidade());
            b1.setText(webServiceCep.getBairro());
            e1.setSelectedItem(webServiceCep.getUf());
            System.out.println("Cep: " + webServiceCep.getCEP());
            System.out.println("Logradouro: " + webServiceCep.getLogradouroFull());
            System.out.println("Bairro: " + webServiceCep.getBairro());
            System.out.println("Cidade: "+ webServiceCep.getCidade());
            System.out.println("UF"+webServiceCep.getUf());

            //caso haja problemas imprime as exce??es.
        } else {
            JOptionPane.showMessageDialog(null, "Erro numero: " + webServiceCep.getResulCode());

            JOptionPane.showMessageDialog(null, "Descrição do erro: " + webServiceCep.getResultText());
        }
    }

   
}

