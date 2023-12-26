package com.interncareer.oexam.controllers;

import com.interncareer.oexam.models.CUnit;
import com.interncareer.oexam.models.Test;
import com.interncareer.oexam.repository.QuestionRepository;
import com.interncareer.oexam.repository.TestRepository;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
public class TestController {
    @Autowired
    private TestRepository testRepository; // Autowire your TestRepository

    @Autowired
    private QuestionRepository questionRepository; // Autowire your QuestionRepository

    @GetMapping("/createTest")
    public ModelAndView createTest() {
        ModelAndView modelAndView = new ModelAndView("teachers/addquestions");
        modelAndView.addObject("cunitValues", CUnit.values());
        return modelAndView;
    }

    @PostMapping("/createTest")
    public ModelAndView createTest(@Valid @ModelAttribute("createTest") Test test, BindingResult result) {
        ModelAndView modelAndView = new ModelAndView("teachers/addquestions");
        modelAndView.addObject("cunitValues", CUnit.values());
        if (result.hasErrors()) {
            modelAndView.addObject("error", "An Error has Occured");
            return modelAndView;
        }

        // Your validation logic
        if (test.getTest_course_title() == null || test.getTime_duration() == null || test.getQuestions() == null) {
            modelAndView.addObject("error", "Please fill in all required fields.");
            return modelAndView;
        }
        // Save the test
        testRepository.save(test);
        // Redirect to a success page or display a success message
        return modelAndView;
    }
}
