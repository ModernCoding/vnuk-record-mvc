/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.vnuk.record.mvc.logic.contact;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.vnuk.record.mvc.logic.Logic;

/**
 *
 * @author michel
 */
public class Create implements Logic {

    @Override
    public String run(HttpServletRequest request, HttpServletResponse response) throws Exception {

        return "/WEB-INF/jsp/contact/create.jsp";
    }
    
}
