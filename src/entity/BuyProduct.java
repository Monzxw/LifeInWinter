package entity;

public class BuyProduct {
    public String Product_id;
    public int size;
    public BuyProduct(){
        size=0;
    }
    public String getProduct_id() {
        return Product_id;
    }

    public void setProduct_id(String product_id) {
        Product_id = product_id;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }
}