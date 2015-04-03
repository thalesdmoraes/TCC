
package model;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

public class Cadastro {
    private String Nome;
    private int CPF;
    private int CNPJ;
    private String Email;
    private int Telefone;
    private String CEP;
    private String Logradouro;
    private String Complemento;
    private String Bairro;
    private String Cidade;
    private String UF;  
    private Object WebServiceCep;
    private int Número;
    
    public Cadastro(String Nome, int CPF, int CNPJ, String Email, int Telefone, String CEP, String Logradouro, String Complemento, String Bairro, int Número,String Cidade, String UF) {
        this.Nome = Nome;
        this.CPF = CPF;
        this.CNPJ = CNPJ;
        this.Email = Email;
        this.Telefone = Telefone;
        this.CEP = CEP;
        this.Número = Número;
        this.Logradouro = Logradouro;
        this.Complemento = Complemento;
        this.Bairro = Bairro;
        this.Cidade = Cidade;
        this.UF = UF;
        this.WebServiceCep= WebServiceCep;
    }

    public Object getWebServiceCep() {
        return WebServiceCep;
    }

    public void setWebServiceCep(Object WebServiceCep) {
        this.WebServiceCep = WebServiceCep;
    }

    public int getNúmero() {
        return Número;
    }

    public void setNúmero(int Número) {
        this.Número = Número;
    }
        public Cadastro(){
           
    }

    public String getNome() {
        return Nome;
    }

    public void setNome(String Nome) {
        this.Nome = Nome;
    }

    public int getCPF() {
        return CPF;
    }

    public void setCPF(int CPF) {
        this.CPF = CPF;
    }

    public int getCNPJ() {
        return CNPJ;
    }

    public void setCNPJ(int CNPJ) {
        this.CNPJ = CNPJ;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public int getTelefone() {
        return Telefone;
    }

    public void setTelefone(int Telefone) {
        this.Telefone = Telefone;
    }

    public String getCEP() {
        return CEP;
    }

    public void setCEP(String CEP) {
        this.CEP = CEP;
    }

    public String getLogradouro() {
        return Logradouro;
    }

    public void setLogradouro(String Logradouro) {
        this.Logradouro = Logradouro;
    }

    public String getComplemento() {
        return Complemento;
    }

    public void setComplemento(String Complemento) {
        this.Complemento = Complemento;
    }

    public String getBairro() {
        return Bairro;
    }

    public void setBairro(String Bairro) {
        this.Bairro = Bairro;
    }

    public String getCidade() {
        return Cidade;
    }

    public void setCidade(String Cidade) {
        this.Cidade = Cidade;
    }

    public String getUF() {
        return UF;
    }

    public void setUF(String UF) {
        this.UF = UF;
    }
public void atualizar(JTextField nome,JTextField cpf,JTextField cnpj,JTextField email,
        JTextField telefone,JTextField cep,JTextField logradouro,JTextField número,
        JTextField complemento,JTextField bairro,JTextField cidade,JTextField uf){
        setNome(nome.getText());
        setCPF(Integer.parseInt(cpf.getText()));
        setCNPJ(Integer.parseInt(cnpj.getText()));
        setEmail(email.getText());
        setTelefone(Integer.parseInt(telefone.getText()));
        setCEP(cep.getText());
        setLogradouro(logradouro.getText());
        setNúmero(Integer.parseInt(número.getText()));
        setComplemento(complemento.getText());
        setBairro(bairro.getText());
        setCidade(cidade.getText());
        setUF(uf.getText());
}

}

