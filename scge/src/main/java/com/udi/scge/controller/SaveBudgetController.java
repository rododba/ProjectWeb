/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.udi.scge.controller;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractCommandController;
import com.udi.scge.model.Person;
import com.udi.scge.service.PersonService;

/**
 *
 * @author rledezma
 */
public class SaveBudgetController extends AbstractCommandController{

    private PersonService personService;
    public void setPersonService(PersonService personService) {
        this.personService = personService;
    }

    public SaveBudgetController(){
        this.setCommandClass(Person.class);
    }

    @Override
    protected ModelAndView handle(HttpServletRequest request, HttpServletResponse response, Object form, BindException errors) throws Exception {
        Map model = new HashMap();

        Person person = (Person) form;
        personService.savePerson(person);

        request.getSession().setAttribute("personList", null);

        model.put("title","Update Person");
        model.put("person",person);
        return new ModelAndView("personEdit", model);
    }

}