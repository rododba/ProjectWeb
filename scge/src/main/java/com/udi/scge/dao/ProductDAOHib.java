/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.udi.scge.dao;

import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.udi.scge.model.Product;

/**
 * 
 * @author rledezma
 */
public class ProductDAOHib extends HibernateDaoSupport implements ProductDAO{

    public List getProductList(){
        return getHibernateTemplate().find("from Product");
    }

    public Product getProduct(Long id){
        return (Product) getHibernateTemplate().get(Product.class, id);
    }

    public void saveProduct(Product product){
        this.getHibernateTemplate().saveOrUpdate(product);
    }

    public void deleteProduct(Long id){
        getHibernateTemplate().delete(getProduct(id));
    }
}