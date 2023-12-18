package com.interncareer.oexam.controllers;

import com.interncareer.oexam.models.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/app")
public class AppController {

    User user;
    @GetMapping("/teacher/dashboard")
    public ModelAndView getTeacherDashboard(HttpSession session) {
        ModelAndView getDashBoardPage = new ModelAndView("teacher/dashboard");
//        Get LoggedIn User Details
        User user = (User)session.getAttribute("user");
//        Get Account of LoggedIn User

//        Set Objects
//        getDashBoardPage.addObject("userAccounts", getUserAccounts);
//        getDashBoardPage.addObject("totalBalance", totalAccountBalance);

        return getDashBoardPage;

    }


    @GetMapping("/student/dashboard")
    public ModelAndView getStudentDashboard(HttpSession session){
        ModelAndView getDashBoardPage = new ModelAndView("student/dashboard");
//        Get LoggedIn User Details
        User user = (User)session.getAttribute("user");
        return getDashBoardPage;
    }
}
