/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;
//hellllllo
import java.io.IOException;
import java.util.ArrayList;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.User;
import services.UserService;

/**
 *
 * @author 856622
 */
public class UserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService service = new UserService();
        
        
        //achor tag and href for action 
        //should be inside the for loop as user will select the user
        //href="users?action=selected&amp;email=${account.email}"
        String action = request.getParameter("action");
        if (action != null && action.equals("selected")) {
            String email = request.getParameter("email");
            User user = service.get(email);
            request.setAttribute("selectedAccount", user);
        }
        
        getServletContext().getRequestDispatcher("/WEB-INF/users.jsp").forward(request, response);
        return;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService service = new UserService();
        String action = request.getParameter("action");
        
        if (action.equals("add")) {
            String userEmail = request.getParameter("email");
            boolean userActive = false;
            if (request.getParameter("active") != null) {
                userActive = true;
            }
            String userFirstname = request.getParameter("firstName");
            String userLastname = request.getParameter("lastName");
            String userPassword = request.getParameter("password");
            int userRole = Integer.parseInt(request.getParameter("role"));
            
            try {
                service.insert(userEmail, userActive, userFirstname, userLastname, userPassword, userRole);
                doGet(request,response);
            }
            catch (Exception e) {
            }
     
        }
//        else if (action.equals("edit")) {
//            service.update(userEmail, userFirstname, userLastname, userRole);
//        } else if (action.equals("delete")) {
//            service.delete(email);
//        }

//        request.setAttribute("Users", users);
//
//        getServletContext().getRequestDispatcher("/WEB-INF/users.jsp").forward(request, response);

    }

}