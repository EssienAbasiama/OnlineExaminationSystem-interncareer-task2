package com.interncareer.oexam.controllers;


import com.interncareer.oexam.models.Test;
import com.interncareer.oexam.repository.QuestionRepository;
import com.interncareer.oexam.repository.TestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
public class TeacherController {
    private TestRepository testRepository; // Autowire your TestRepository

    private QuestionRepository questionRepository; // Autowire your QuestionRepository

}