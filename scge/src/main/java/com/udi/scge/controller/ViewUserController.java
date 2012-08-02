/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.udi.scge.controller;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import com.udi.scge.model.Person;
import com.udi.scge.service.PersonService;

/**
 *
 * @author rledezma
 */
public class ViewUserController implements Controller{

    private PersonService personService;
    public void setPersonService(PersonService personService) {
        this.personService = personService;
    }

    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Map model = new HashMap();

        Long id = Long.parseLong(request.getParameter("personId"));
        Person person = personService.getPerson(id);

        model.put("title", "Person Details");
        model.put("person", person);
        return new ModelAndView("personView", model);
    }

}