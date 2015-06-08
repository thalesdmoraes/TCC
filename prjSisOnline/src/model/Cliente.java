/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.swing.JTextField;

/**
 *
 * @author thales
 */
public class Cliente {
    private int cod;
    private boolean pessoafisica;
    private String nome;
    private String endereco;
    private int numero;
    private String cidade;
    private String bairro;
    private String uf;
    private int celular;
    private int cep;
    private int telefone;
    private String rg;
    private String cpfcnpj;

    public Cliente(int cod, String nome, String endereco, int numero, String cidade, String bairro, String uf, int celular, int cep, int telefone, String rg, String cpfcnpj) {
        this.cod = cod;
        this.nome = nome;
        this.endereco = endereco;
        this.numero = numero;
        this.cidade = cidade;
        this.bairro = bairro;
        this.uf = uf;
        this.celular = celular;
        this.cep = cep;
        this.telefone = telefone;
        this.rg = rg;
        this.cpfcnpj = cpfcnpj;
    }
    
    public Cliente(){
        this(0, "", "", 0, "", "", "", 0, 0, 0, "", "");
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String Uf) {
        this.uf = uf;
    }

    public int getCelular() {
        return celular;
    }

    public void setCelular(int celular) {
        this.celular = celular;
    }

    public int getCep() {
        return cep;
    }

    public void setCep(int cep) {
        this.cep = cep;
    }

    public int getTelefone() {
        return telefone;
    }

    public void setTelefone(int telefone) {
        this.telefone = telefone;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getCpfcnpj() {
        return cpfcnpj;
    }

    public void setCpfcnpj(String cpfcnpj) {
        this.cpfcnpj = cpfcnpj;
    }
    
    public void atualizar(JTextField cod, JTextField nome, JTextField endereco, JTextField numero, JTextField cidade, JTextField bairro, JTextField uf, JTextField cep, JTextField celular, JTextField telefone, JTextField rg, JTextField cnpjcpf){
        setCod(Integer.parseInt(cod.getText()));
        setNome(nome.getText());
        setEndereco(endereco.getText());
        setNumero(Integer.parseInt(numero.getText()));
        setCidade(cidade.getText());
        setUf(uf.getText());
        setCep(Integer.parseInt(cep.getText()));
        setCelular(Integer.parseInt(celular.getText()));
        setTelefone(Integer.parseInt(telefone.getText()));
        setRg(rg.getText());
        setCpfcnpj(cnpjcpf.getText());
    }
    
    public void limpar(){
        this.cod = 0;
        this.nome = "";
        this.endereco = "";
        this.numero = 0;
        this.cidade = "";
        this.uf = "";
        this.cep = 0;
        this.celular = 0;
        this.telefone = 0;
        this.rg = "";
        this.cpfcnpj = "";
    }
}
