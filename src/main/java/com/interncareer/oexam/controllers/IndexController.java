package com.interncareer.oexam.controllers;

import com.interncareer.oexam.helper.Token;
import com.interncareer.oexam.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

    @Autowired
    private UserRepository userRepository;
    @GetMapping("/")
    public ModelAndView getIndex() {
        System.out.println("In Index Controller");
        ModelAndView getLoginPage = new ModelAndView("auth/login");
        String token = Token.generateToken();

        // Send Token To View;
        getLoginPage.addObject("token", token);
        getLoginPage.addObject("PageTitle", "Login");
        return getLoginPage;
    }

    @GetMapping("/error")
    public ModelAndView getError() {
        ModelAndView getErrorPage = new ModelAndView("error/error");
        System.out.println("Error Page Controller");
        getErrorPage.addObject("PageTitle","Error");
        return getErrorPage;
    }

    @GetMapping("/verify")
    public ModelAndView getVerify(@RequestParam("token")String token,@RequestParam("code")String code) {
//        Set View
        ModelAndView getVerifyPage = new ModelAndView("auth/login");
        userRepository.verifyAccount(token,code);
        getVerifyPage.addObject("SUCCESS","Account Verified Successfully. Kindly Login");
        System.out.println("In Verify Account Page Controller");
        getVerifyPage.addObject("PageTitle","login");
        return getVerifyPage;
    }
}