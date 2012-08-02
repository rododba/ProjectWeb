/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.udi.scge.dao;

import java.util.List;
import com.udi.scge.model.Person;

/**
 *
 * @author rledezma
 */
public interface CandidateDAO {

    public List getPersonList();

    public Person getPerson(Long id);

    public void savePerson(Person person);

    public void deletePerson(Long id);
}