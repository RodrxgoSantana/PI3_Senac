package br.senac.sp.dao;

import br.senac.br.entidades.Relatorios;
import br.senac.br.servelet.ServletBD;
import br.senac.sp.bd.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author lucas
 */
public class RelatoriosDAO {

    public static List<Relatorios> RelatorioPorCliente() {
        List<Relatorios> relatorioCliente = new ArrayList();
        try {
            Connection con = ConexaoDB.obterConexao();
            String query = "select venda.id_venda, cliente.nome_cliente, vendedor.nome_vendedor, produto.nomeProduto, venda.qtdVenda, venda.data_venda from venda inner join cliente on venda.id_cliente = cliente.id_cliente inner join vendedor on venda.id_vendedor = vendedor.id_vendedor inner join produto on venda.id_produto = produto.id_produto order by cliente.nome_cliente;";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String cliente = rs.getString("nome_cliente");
                Integer venda = rs.getInt("id_venda");             
                String vendedor = rs.getString("nome_vendedor");
                String produto = rs.getString("nomeProduto");
                Integer qtdVenda = rs.getInt("qtdVenda");
                Date data_venda = rs.getDate("data_venda");

                relatorioCliente.add(new Relatorios(venda, produto, cliente, vendedor, qtdVenda, data_venda));
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ServletBD.class.getName()).
                    log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ServletBD.class.getName()).
                    log(Level.SEVERE, null, ex);
        }
        return relatorioCliente;
    }

    public static List<Relatorios> RelatorioPorFilial() {
        List<Relatorios> relarioFilial = new ArrayList();

        try {
            Connection con = ConexaoDB.obterConexao();
            String query = "select venda.id_venda, vendedor.filial, cliente.nome_cliente, vendedor.nome_vendedor, produto.nomeProduto, venda.qtdVenda, venda.data_venda from  venda inner join cliente on venda.id_cliente = cliente.id_cliente inner join vendedor on venda.id_vendedor = vendedor.id_vendedor inner join produto on venda.id_produto = produto.id_produto order by vendedor.filial;";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String filial = rs.getString("filial");
                Integer venda = rs.getInt("id_venda");
                String cliente = rs.getString("nome_cliente");
                String vendedor = rs.getString("nome_vendedor");
                String produto = rs.getString("nomeProduto");
                Integer qtdVenda = rs.getInt("qtdVenda");
                Date data_venda = rs.getDate("data_venda");

                relarioFilial.add(new Relatorios(filial, venda, cliente, vendedor, produto, qtdVenda, data_venda));
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ServletBD.class.getName()).
                    log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ServletBD.class.getName()).
                    log(Level.SEVERE, null, ex);
        }
        return relarioFilial;
    }

    public static List<Relatorios> RelatorioPorProduto() {
        List<Relatorios> relarioFilial = new ArrayList();
        
        try {
            Connection con = ConexaoDB.obterConexao();
            String query = "select venda.id_venda, produto.categoria, cliente.nome_cliente, vendedor.nome_vendedor, produto.nomeProduto, venda.qtdVenda, venda.data_venda from  venda inner join cliente on venda.id_cliente = cliente.id_cliente inner join vendedor on venda.id_vendedor = vendedor.id_vendedor inner join produto on venda.id_produto = produto.id_produto order by vendedor.filial;";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String categoria_produto = rs.getString("categoria");
                Integer venda = rs.getInt("id_venda");
                String cliente = rs.getString("nome_cliente");
                String vendedor = rs.getString("nome_vendedor");
                Integer qtdVenda = rs.getInt("qtdVenda");
                Date data_venda = rs.getDate("data_venda");

                relarioFilial.add(new Relatorios(categoria_produto, venda, cliente, vendedor, qtdVenda, data_venda));
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ServletBD.class.getName()).
                    log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ServletBD.class.getName()).
                    log(Level.SEVERE, null, ex);
        }
        return relarioFilial;
    }
}
