/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.udi.scge.controller;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import com.udi.scge.service.ProductService;

/**
 *
 * @author rledezma
 */
public class IndexProductController implements Controller {

    private ProductService productService;
    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Map model = new HashMap();
        PagedListHolder pagedListHolder = (PagedListHolder) request.getSession().getAttribute("productList");

        if(pagedListHolder == null){
            pagedListHolder = new PagedListHolder(productService.getProductList());
        }
        else{
            String page = (String) request.getParameter("page");
            if("next".equals(page)){
                pagedListHolder.nextPage();
            }
            else if("previous".equals(page)){
                pagedListHolder.previousPage();
            }
        }

        request.getSession().setAttribute("productList", pagedListHolder);
        model.put("productList", pagedListHolder);
        return new ModelAndView("Product/index", model);
    }

}