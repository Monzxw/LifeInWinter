package entity;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import Dao.ProductDao;

public class Cart {
    private HashMap<BuyProduct,Integer> goods;
    private double totalprice;
    public Cart(){
        goods=new HashMap<BuyProduct,Integer>();
        totalprice=0.0;
    }

    public HashMap<BuyProduct, Integer> getGoods() {
        return goods;
    }

    public void setGoods(HashMap<BuyProduct, Integer> goods) {
        this.goods = goods;
    }

    public double getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(double totalprice) {
        this.totalprice = totalprice;
    }
    public boolean addGoodsInCart(BuyProduct item ,int number)
    {
        if(goods.containsKey(item))
        {
            goods.put(item, goods.get(item)+number);
        }
        else
        {
            goods.put(item, number);
        }
        calTotalPrice(); //重新计算购物车的总金额
        return true;
    }
    public BuyProduct findButProduct(String id, int size){
        for(BuyProduct bp : goods.keySet()){
            if(bp.getProduct_id().equals(id) && bp.getSize()==size){
                return bp;
            }
        }
        return null;
    }
    public boolean removeGoodsFromCart(BuyProduct item)
    {
        goods.remove(item);
        calTotalPrice(); //重新计算购物车的总金额
        return true;
    }
    public boolean removeall()
    {
        goods.clear();
        calTotalPrice();
        return true;
    }
    public double calTotalPrice()
    {
        double sum = 0.0;
        Set<BuyProduct> keys = goods.keySet(); //获得键的集合
        Iterator<BuyProduct> it = keys.iterator(); //获得迭代器对象
        while(it.hasNext())
        {
            BuyProduct i = it.next();
            String tempid=i.getProduct_id();
            ProductDao productDao=new ProductDao();
            Product product=productDao.getproductById(tempid);
            double tempprice=product.getProduct_price();
            sum+=tempprice;
        }
        this.setTotalprice(sum);
        return this.getTotalprice();
    }
}