package Dao;
        import java.sql.Connection;
        import java.sql.PreparedStatement;
        import java.sql.ResultSet;
        import java.util.ArrayList;

        import util.DBHelper;

        import entity.Product;
public class ProductDao {
    public ArrayList<Product> getAllProduct() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<Product> list = new ArrayList<Product>();// 商品集合
        try {
            conn = DBHelper.getConnection();
            String sql = "select * from product;"; // SQL语句
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Product item = new Product();
                item.setProduct_id(rs.getString("Product_id"));
                item.setProduct_title(rs.getString("Product_title"));
                item.setProduct_price(Double.parseDouble(rs.getString("Product_price")));
                item.setProduct_small(Integer.parseInt(rs.getString("Product_small")));
                item.setProduct_Medium(Integer.parseInt(rs.getString("Product_medium")));
                item.setProduct_large(Integer.parseInt(rs.getString("Product_large")));
                item.setProduct_picture(rs.getString("Product_picture"));
                item.setProduct_hot(Integer.parseInt(rs.getString("Product_hot")));
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
    public Product getproductById(String temp) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = DBHelper.getConnection();
            String sql = "select * from product where Product_id=?;"; // SQL语句
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, temp);
            rs = stmt.executeQuery();
            if (rs.next()) {
                Product item = new Product();
                item.setProduct_id(rs.getString("Product_id"));
                item.setProduct_title(rs.getString("Product_title"));
                item.setProduct_price(Double.parseDouble(rs.getString("Product_price")));
                item.setProduct_small(Integer.parseInt(rs.getString("Product_small")));
                item.setProduct_Medium(Integer.parseInt(rs.getString("Product_medium")));
                item.setProduct_large(Integer.parseInt(rs.getString("Product_large")));
                item.setProduct_picture(rs.getString("Product_picture"));
                item.setProduct_hot(Integer.parseInt(rs.getString("Product_hot")));
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
