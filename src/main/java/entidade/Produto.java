/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidade;


import java.sql.Date;


/**
 *
 * @author Beto
 */

public class Produto {
    private final int id;
    private String nome;
    private Date dataFabricacao;
    private Date dataVencimento;
    private double preco;

    public Produto(int id, String nome, Date dataFabricacao, Date dataVencimento, double preco) {
        this.id = id;
        this.nome = nome;
        this.dataFabricacao = dataFabricacao;
        this.dataVencimento = dataVencimento;
        this.preco = preco;
    }

    public Produto(String nome, Date datef, Date datev, double preco) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getId(){
        return id;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getDataFabricacao() {
        return dataFabricacao;
    }

    public void setDataFabricacao(Date dataFabricacao) {
        this.dataFabricacao = dataFabricacao;
    }

    public Date getDataVencimento() {
        return dataVencimento;
    }

    public void setDataVencimento(Date dataVencimento) {
        this.dataVencimento = dataVencimento;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }
    
    @Override
    public String toString() {
        
        // Gambiarra para remover os centavos do preço do produto.
        // Tava dando erro no JavaScript, única alternativa que encontrei pra calcular o preço (aproximado) do carrinho
        String valorEmTexto = Double.toString(preco);
        String valorComPonto = valorEmTexto.substring(0, valorEmTexto.length() - 3);
        
        return String.format("{'id': %d, 'nome': '%s', 'preco': %s }", id, nome, valorComPonto);
    }
    
}
