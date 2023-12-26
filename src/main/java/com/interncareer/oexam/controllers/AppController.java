package com.interncareer.oexam.controllers;

import com.interncareer.oexam.models.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AppController {

    User user;
    @GetMapping("/teacherDashboard")
    public ModelAndView getTeacherDashboard(HttpSession session) {
        ModelAndView getTeacherDashBoardPage = new ModelAndView("teachers/index");
//        Get LoggedIn User Details
        User user = (User)session.getAttribute("user");

//        Set Objects
        getTeacherDashBoardPage.addObject("Name", user.getFirst_name());
        getTeacherDashBoardPage.addObject("email", user.getFirst_name());
        return getTeacherDashBoardPage;
    }

    @GetMapping("/student/dashboard")
    public ModelAndView getStudentDashboard(HttpSession session){
        ModelAndView getDashBoardPage = new ModelAndView("student/index");
//        Get LoggedIn User Details
        User user = (User)session.getAttribute("user");
        return getDashBoardPage;
    }
}
