package com.interncareer.oexam.controllers;

import ch.qos.logback.core.model.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class QuestionController {
    @GetMapping("/question")
    public ModelAndView getQuestionPage(){
        ModelAndView modelAndView = new ModelAndView("/teachers/questions");
        return modelAndView;
    }
}
