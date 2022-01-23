/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Struts2/ActionSupport.java to edit this template
 */
package struts2.test.actions;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import struts2.test.beans.Products;
import struts2.test.dao.ProductServices;

/**
 *
 * @author Apu
 */
public class ProductAction extends ActionSupport {
    
    private String productName ;
    private String productMake ;
    private double price ;
    private int availability ;
    private String msg = "";
    private ProductServices productServices = null;
    private int ctr = 0;
    
    private ResultSet rs = null;
    private Products product = null;
    private List<Products> productList = null;
    private boolean noData = false;
    
    private int productId;
    private String submitType;
    private ProductServices dao = new ProductServices();
    
    public String registerProduct() throws Exception {
        productServices = new ProductServices();

        try {
            setCtr(productServices.registerProduct(productName, productMake,
             price, availability));
            if (getCtr() > 0) {
                setMsg("Product Registered");
            } else {
                setMsg("Some error occured");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "REGISTERPRODUCT";
    }
    
    
    public String showProducts() throws Exception {
        productServices = new ProductServices();
        try {
            setProductList(new ArrayList<>());
            setProductList(productServices.productReport());
            

            if (!productList.isEmpty() ) {
                setNoData(false);
                System.out.println("Users retrieve = "+getProductList().size());
                System.out.println("setting nodata=false");
            } else {
                setNoData(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "PRODUCTREPORT";
    }
    
    
    public String updateProduct() throws Exception {

        try {
            if (getSubmitType().equals("updateProduct")) {
                Products product = getDao().fetchProductDetails(getProductId());
                if (product != null) {
                    setProductId(product.getProductId());
                    setProductName(product.getProductName());
                    setProductMake(product.getProductMake());
                    setPrice(product.getPrice());
                    setAvailability(product.getAvailability());
                }
            } else {
                int i = getDao().updateProductDetails(getProductId(), productName, productMake,
             price, availability);
                if (i > 0) {
                    setMsg("Record Updated Successfuly");
                } else {
                    setMsg("error");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "UPDATEPRODUCT";
    }
    
    
    public String deleteProduct() throws Exception {
        try {
            int isDeleted = getDao().deleteProductDetails(getProductId());
            if (isDeleted > 0) {
                setMsg("Record deleted successfully");
            } else {
                setMsg("Some error");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "DELETEPRODUCT";
    }
    

    /**
     * @return the productName
     */
    public String getProductName() {
        return productName;
    }

    /**
     * @param productName the productName to set
     */
    public void setProductName(String productName) {
        this.productName = productName;
    }

    /**
     * @return the productMake
     */
    public String getProductMake() {
        return productMake;
    }

    /**
     * @param productMake the productMake to set
     */
    public void setProductMake(String productMake) {
        this.productMake = productMake;
    }

    /**
     * @return the price
     */
    public double getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(double price) {
        this.price = price;
    }

    /**
     * @return the availability
     */
    public int getAvailability() {
        return availability;
    }

    /**
     * @param availability the availability to set
     */
    public void setAvailability(int availability) {
        this.availability = availability;
    }

    /**
     * @return the msg
     */
    public String getMsg() {
        return msg;
    }

    /**
     * @param msg the msg to set
     */
    public void setMsg(String msg) {
        this.msg = msg;
    }

    /**
     * @return the productServices
     */
    public ProductServices getProductServices() {
        return productServices;
    }

    /**
     * @param productServices the productServices to set
     */
    public void setProductServices(ProductServices productServices) {
        this.productServices = productServices;
    }

    /**
     * @return the ctr
     */
    public int getCtr() {
        return ctr;
    }

    /**
     * @param ctr the ctr to set
     */
    public void setCtr(int ctr) {
        this.ctr = ctr;
    }

    /**
     * @return the rs
     */
    public ResultSet getRs() {
        return rs;
    }

    /**
     * @param rs the rs to set
     */
    public void setRs(ResultSet rs) {
        this.rs = rs;
    }

    /**
     * @return the product
     */
    public Products getProduct() {
        return product;
    }

    /**
     * @param product the product to set
     */
    public void setProduct(Products product) {
        this.product = product;
    }

    /**
     * @return the productList
     */
    public List<Products> getProductList() {
        return productList;
    }

    /**
     * @param productList the productList to set
     */
    public void setProductList(List<Products> productList) {
        this.productList = productList;
    }

    /**
     * @return the noData
     */
    public boolean isNoData() {
        return noData;
    }

    /**
     * @param noData the noData to set
     */
    public void setNoData(boolean noData) {
        this.noData = noData;
    }

    /**
     * @return the submitType
     */
    public String getSubmitType() {
        return submitType;
    }

    /**
     * @param submitType the submitType to set
     */
    public void setSubmitType(String submitType) {
        this.submitType = submitType;
    }

    /**
     * @return the dao
     */
    public ProductServices getDao() {
        return dao;
    }

    /**
     * @param dao the dao to set
     */
    public void setDao(ProductServices dao) {
        this.dao = dao;
    }

    /**
     * @return the productId
     */
    public int getProductId() {
        return productId;
    }

    /**
     * @param productId the productId to set
     */
    public void setProductId(int productId) {
        this.productId = productId;
    }
    
}
