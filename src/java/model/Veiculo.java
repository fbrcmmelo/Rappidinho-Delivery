/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author fbrcmmelo
 */
public class Veiculo {
    private int idVeiculo;
    private String nomeVeiculo;
    private String renavamVeiculo;
    private String tipoVeiculo;
    private Pessoa pessoa;
    

    public Veiculo() {
    }

    /**
     * @return the idVeiculo
     */
    public int getIdVeiculo() {
        return idVeiculo;
    }

    /**
     * @param idVeiculo the idVeiculo to set
     */
    public void setIdVeiculo(int idVeiculo) {
        this.idVeiculo = idVeiculo;
    }

    /**
     * @return the nomeVeiculo
     */
    public String getNomeVeiculo() {
        return nomeVeiculo;
    }

    /**
     * @param nomeVeiculo the nomeVeiculo to set
     */
    public void setNomeVeiculo(String nomeVeiculo) {
        this.nomeVeiculo = nomeVeiculo;
    }

    /**
     * @return the renavamVeiculo
     */
    public String getRenavamVeiculo() {
        return renavamVeiculo;
    }

    /**
     * @param renavamVeiculo the renavamVeiculo to set
     */
    public void setRenavamVeiculo(String renavamVeiculo) {
        this.renavamVeiculo = renavamVeiculo;
    }

    /**
     * @return the tipoVeiculo
     */
    public String getTipoVeiculo() {
        return tipoVeiculo;
    }

    /**
     * @param tipoVeiculo the tipoVeiculo to set
     */
    public void setTipoVeiculo(String tipoVeiculo) {
        this.tipoVeiculo = tipoVeiculo;
    }

    /**
     * @return the pessoa
     */
    public Pessoa getPessoa() {
        return pessoa;
    }

    /**
     * @param pessoa the pessoa to set
     */
    public void setPessoa(Pessoa pessoa) {
        this.pessoa = pessoa;
    }
    
    
}
