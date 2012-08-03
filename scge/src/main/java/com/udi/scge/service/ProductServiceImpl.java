/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.udi.scge.service;

import java.util.List;
import com.udi.scge.dao.ProductDAO;
import com.udi.scge.model.Product;

/**
 *
 * @author rledezma
 */
public class ProductServiceImpl implements ProductService{

    private ProductDAO productDAO;
    public void setProductDAO(ProductDAO productDAO) {
        this.productDAO = productDAO;
    }

    public List getProductList() {
        return productDAO.getProductList();
    }

    public Product getProduct(Long id){
        return productDAO.getProduct(id);
    }

    public void saveProduct(Product product) {
        productDAO.saveProduct(product);
    }

    public void deleteProduct(Long id) {
        productDAO.deleteProduct(id);
    }

}
