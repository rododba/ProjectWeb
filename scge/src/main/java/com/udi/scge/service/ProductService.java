/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.udi.scge.service;

import java.util.List;
import com.udi.scge.model.Product;

/**
 *
 * @author rledezma
 */
public interface ProductService {

    public List getProductList();

    public Product getProduct(Long id);

    public void saveProduct(Product product);

    public void deleteProduct(Long id);
}
