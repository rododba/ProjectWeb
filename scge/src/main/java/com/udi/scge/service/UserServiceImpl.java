/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.udi.scge.service;

import java.util.List;
import com.udi.scge.dao.PersonDAO;
import com.udi.scge.model.Person;

/**
 *
 * @author rledezma
 */
public class UserServiceImpl implements PersonService{

    private PersonDAO personDAO;
    public void setPersonDAO(PersonDAO personDAO) {
        this.personDAO = personDAO;
    }

    public List getPersonList() {
        return personDAO.getPersonList();
    }

    public Person getPerson(Long id){
        return personDAO.getPerson(id);
    }

    public void savePerson(Person person) {
        personDAO.savePerson(person);
    }

    public void deletePerson(Long id) {
        personDAO.deletePerson(id);
    }

}
