/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidade;


import java.sql.Date;
import lombok.Getter;
import lombok.Setter;


/**
 *
 * @author Beto
 */
@Getter
@Setter
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

}
