/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Contratado;
import model.Pessoa;
import model.Rota;
import utils.ConnectionFactory;

/**
 *
 * @author fbrcmmelo
 */
public class RotaDAO implements GenericDAO {

    private Connection conn;

    public RotaDAO() throws Exception {
        try {
            this.conn = ConnectionFactory.getConnection();
            System.out.println("Conectado com o BD com sucesso !");
        } catch (Exception ex) {
            throw new Exception("Problemas ao conectar o Bd Man Erro " + ex.getMessage());
        }
    }

    @Override
    public Boolean cadastrar(Object object) {
        Rota oRota = (Rota) object;
        PreparedStatement stmt = null;

        String sql = "insert into rota (nome_rota, lat_saida_rota, lng_saida_rota, lat_chegada_rota, lng_chegada_rota, status_rota, id_pessoa) "
                + "values (?, ?, ?, ?, ?, ?, ?);";

        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, oRota.getNomeRota());
            stmt.setDouble(2, oRota.getLatSaidaRota());
            stmt.setDouble(3, oRota.getLngSaidaRota());
            stmt.setDouble(4, oRota.getLatChegadaRota());
            stmt.setDouble(5, oRota.getLngChegadaRota());
            stmt.setString(6, oRota.getStatusRota());
            stmt.setInt(7, oRota.getPessoa().getIdPessoa());
            stmt.execute();
            return true;
        } catch (Exception ex) {
            System.out.println("Problemas ao Cadastrar Rota " + ex.getMessage());
            return false;
        } finally {
            try {
                ConnectionFactory.closeConnection(conn, stmt);
            } catch (Exception ex) {
                System.out.println("Problemas ao fechar a conexao ! " + ex.getMessage());
                ex.printStackTrace();
            }
        }
    }

    @Override
    public List<Object> listar() {
        List<Object> lstResultado = new ArrayList<>();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String sql = "select r.*, c.id_pessoa, pes.nome_pessoa from rota r, contratado c,  pessoa pes "
                + "where r.id_pessoa = pes.id_pessoa and c.id_pessoa = pes.id_pessoa order by r.id_rota desc;";// nome da tabela do banco (TUDOMINUSCULO)

        try {
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Rota oRota = new Rota();
                oRota.setIdRota(rs.getInt("id_rota"));
                oRota.setNomeRota(rs.getString("nome_rota"));
                oRota.setLatSaidaRota(rs.getDouble("lat_saida_rota"));
                oRota.setLngSaidaRota(rs.getDouble("lng_saida_rota"));
                oRota.setLatChegadaRota(rs.getDouble("lat_chegada_rota"));
                oRota.setLngChegadaRota(rs.getDouble("lng_chegada_rota"));
                oRota.setStatusRota(rs.getString("status_rota"));
                oRota.setPessoa(new Pessoa(rs.getInt("id_pessoa"), rs.getString("nome_pessoa")));
   
                lstResultado.add(oRota);
            }
        } catch (Exception ex) {
            System.out.println("Problema ao listar Rota:Erro:" + ex.getMessage());
        } finally { //fechar o BD não importa o que aconteça
            try {
                ConnectionFactory.closeConnection(conn, stmt, rs);
            } catch (Exception ex) {
                System.out.println("Problema ao fechar os parametros de conn! Erro:" + ex.getMessage());
            }
        }
        return lstResultado;

    }

    @Override
    public void excluir(int idObject) {
        PreparedStatement stmt = null;
        String sql = "delete from rota where id_rota = ?";

        try {
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, idObject);
            stmt.executeUpdate();

        } catch (Exception ex) {
            System.out.println("Problemas ao Excluir Rota " + ex.getMessage());
        } finally {
            try {
                ConnectionFactory.closeConnection(conn, stmt);
            } catch (Exception ex) {
                System.out.println("Problemas ao fechar a conexao ! " + ex.getMessage());
                ex.printStackTrace();
            }
        }
    }

    @Override
    public Object carregar(int idObject) {
        Rota oRota = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String sql = "select * from rota where id_rota = ?";// nome da tabela do banco (TUDOMINUSCULO)

        try {
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, idObject);
            rs = stmt.executeQuery();
            while (rs.next()) {
                oRota = new Rota();
                oRota.setIdRota(rs.getInt("id_rota"));
                oRota.setNomeRota(rs.getString("nome_rota"));
                oRota.setLatSaidaRota(rs.getDouble("lat_saida_rota"));
                oRota.setLngSaidaRota(rs.getDouble("lng_saida_rota"));
                oRota.setLatChegadaRota(rs.getDouble("lat_chegada_rota"));
                oRota.setLngChegadaRota(rs.getDouble("lng_chegada_rota"));
                oRota.setStatusRota(rs.getString("status_rota"));
         
            }
        } catch (Exception ex) {
            System.out.println("Problema ao carregar Rota:Erro:" + ex.getMessage());
        } finally { //fechar o BD não importa o que aconteça
            try {
                ConnectionFactory.closeConnection(conn, stmt, rs);
            } catch (Exception ex) {
                System.out.println("Problema ao fechar os parametros de conn! Erro:" + ex.getMessage());
            }
        }
        return oRota;
    }

    @Override
    public Boolean alterar(Object object) {
        Rota oRota = (Rota) object;
        PreparedStatement stmt = null;

        String sql = "update rota set nome_rota= ?, lat_saida_rota= ?, lng_saida_rota= ?, lat_chegada_rota= ?, lng_chegada_rota= ?, "
                + "status_rota= ? where id_rota = ? ;";

        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, oRota.getNomeRota());
            stmt.setDouble(2, oRota.getLatSaidaRota());
            stmt.setDouble(3, oRota.getLngSaidaRota());
            stmt.setDouble(4, oRota.getLatChegadaRota());
            stmt.setDouble(5, oRota.getLngChegadaRota());
            stmt.setString(6, oRota.getStatusRota());
            stmt.setInt(7, oRota.getIdRota());
            stmt.executeUpdate();
            return true;
        } catch (Exception ex) {
            System.out.println("Problemas ao Alterar Rota " + ex.getMessage());
            return false;
        } finally {
            try {
                ConnectionFactory.closeConnection(conn, stmt);
            } catch (Exception ex) {
                System.out.println("Problemas ao fechar a conexao ! " + ex.getMessage());
                ex.printStackTrace();
            }
        }
    }
}
