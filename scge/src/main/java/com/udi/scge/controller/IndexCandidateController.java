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
import com.udi.scge.service.PersonService;

/**
 *
 * @author rledezma
 */
public class IndexCandidateController implements Controller {

    private PersonService personService;
    public void setPersonService(PersonService personService) {
        this.personService = personService;
    }

    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Map model = new HashMap();
        PagedListHolder pagedListHolder = (PagedListHolder) request.getSession().getAttribute("personList");

        if(pagedListHolder == null){
            pagedListHolder = new PagedListHolder(personService.getPersonList());
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

        request.getSession().setAttribute("personList", pagedListHolder);
        model.put("personList", pagedListHolder);
        return new ModelAndView("index", model);
    }

}