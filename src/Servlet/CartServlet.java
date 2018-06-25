package Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import entity.*;

@WebServlet(name = "Servlet")
public class CartServlet extends HttpServlet {
    private String action ;
    public CartServlet() {
        super();
    }
    public void destroy() {
        super.destroy(); // Just puts "destroy" string in log
        // Put your code here
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        if(request.getParameter("action")!=null)
        {
            this.action = request.getParameter("action");
            if(action.equals("add")) //如果是添加商品进购物车
            {
                if(addToCart(request,response))
                {
                    response.getWriter().write("success");
                }
            }
            if(action.equals("show"))//如果是显示购物车
            {
                request.getRequestDispatcher("/ShoppingTrolley.jsp").forward(request, response);
            }
            if(action.equals("delete")) //如果是执行删除购物车中的商品
            {
                if(deleteFromCart(request,response))
                {
                    response.getWriter().write("success");
                }
            }
            if(action.equals("deleteall"))
            {
                if(deleteallFormCart(request,response))
                {
                    response.getWriter().write("success");
                }
            }
        }
    }
    //添加商品进购物车的方法
    private boolean addToCart(HttpServletRequest request, HttpServletResponse response)
    {
        String id = request.getParameter("id");
        String number = request.getParameter("num");
        String sizetemp=request.getParameter("size");
        int size=0;
        if(sizetemp.equals("Small"))
        {
            size=0;
        }
        else if(sizetemp.equals("Medium"))
        {
            size=1;
        }
        else size=2;
        BuyProduct buyProduct=new BuyProduct();
        buyProduct.setProduct_id(id);
        buyProduct.setSize(size);
        //是否是第一次给购物车添加商品,需要给session中创建一个新的购物车对象
        if(request.getSession().getAttribute("cart")==null)
        {
            Cart cart = new Cart();
            request.getSession().setAttribute("cart",cart);
        }
        Cart cart = (Cart)request.getSession().getAttribute("cart");
        if(cart.addGoodsInCart(buyProduct, Integer.parseInt(number)))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    //从购物车中删除商品
    private boolean deleteFromCart(HttpServletRequest request, HttpServletResponse response)
    {
        String id = request.getParameter("id");
        String sizetemp=request.getParameter("size");
        int size=0;
        if(sizetemp.equals("Small"))
        {
            size=0;
        }
        else if(sizetemp.equals("Medium"))
        {
            size=1;
        }
        else size=2;
        Cart cart = (Cart)request.getSession().getAttribute("cart");
        BuyProduct buyProduct=cart.findButProduct(id,size);
        if(buyProduct==null)return false;
        if(cart.removeGoodsFromCart(buyProduct)){
            request.getSession().setAttribute("cart", cart);
            return true;
        }
        else{
            return false;
        }
    }
    private  boolean deleteallFormCart(HttpServletRequest request, HttpServletResponse response)
    {
        Cart cart = (Cart)request.getSession().getAttribute("cart");
        if(cart.removeall()){
            request.getSession().getAttribute("cart");
            return true;
        }
        else{
            return false;
        }
    }


}
