package Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import entity.Order;
import util.DBHelper;

import entity.Product;
public class OrderDao {
    public ArrayList<Order> getAllOrder() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<Order> list = new ArrayList<Order>();// 商品集合
        try {
            conn = DBHelper.getConnection();
            String sql = "select * from Order;"; // SQL语句
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Order item = new Order();
                item.setOrder_id(rs.getString("Order_id"));
                item.setOrder_userid(rs.getString("Order_userid"));
                item.setOrder_productid(rs.getString("Order_productid"));
                item.setOrder_address(rs.getString("Order_useradress"));
                item.setOrder_quantity(rs.getString("Order_quantity"));
                list.add(item);// 把一个商品加入集合
            }
            return list; // 返回集合。
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        } finally {
            // 释放数据集对象
            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
            // 释放语句对象
            if (stmt != null) {
                try {
                    stmt.close();
                    stmt = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        }

    }

    // 根据商品编号获得商品资料
    public Order getcompanyById(String gongsiid) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = DBHelper.getConnection();
            String sql = "select * from Order where Order_id=?;"; // SQL语句
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, gongsiid);
            rs = stmt.executeQuery();
            if (rs.next()) {
                Order item = new Order();
                item.setOrder_id(rs.getString("Order_id"));
                item.setOrder_userid(rs.getString("Order_userid"));
                item.setOrder_productid(rs.getString("Order_productid"));
                item.setOrder_address(rs.getString("Order_useradress"));
                item.setOrder_quantity(rs.getString("Order_quantity"));
                return item;
            } else {
                return null;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        } finally {
            // 释放数据集对象
            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
            // 释放语句对象
            if (stmt != null) {
                try {
                    stmt.close();
                    stmt = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }

        }
    }
}

