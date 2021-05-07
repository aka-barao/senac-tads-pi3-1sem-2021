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
    private String nome;
    private Date dataFabricacao;
    private Date dataVencimento;
    private double preco;

    public Produto(String nome, Date dataFabricacao, Date dataVencimento, double preco) {
        this.nome = nome;
        this.dataFabricacao = dataFabricacao;
        this.dataVencimento = dataVencimento;
        this.preco = preco;
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
    
    

}
