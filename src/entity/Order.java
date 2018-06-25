package entity;

public class Order {
    String Order_id;
    String Order_userid;
    String Order_address;
    String Order_productid;
    String Order_quantity;

    public String getOrder_id() {
        return Order_id;
    }

    public void setOrder_id(String order_id) {
        Order_id = order_id;
    }

    public String getOrder_userid() {
        return Order_userid;
    }

    public void setOrder_userid(String order_userid) {
        Order_userid = order_userid;
    }

    public String getOrder_address() {
        return Order_address;
    }

    public void setOrder_address(String order_address) {
        Order_address = order_address;
    }

    public String getOrder_productid() {
        return Order_productid;
    }

    public void setOrder_productid(String order_productid) {
        Order_productid = order_productid;
    }

    public String getOrder_quantity() {
        return Order_quantity;
    }

    public void setOrder_quantity(String order_quantity) {
        Order_quantity = order_quantity;
    }
}