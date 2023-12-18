package com.interncareer.oexam.controllers;

import com.interncareer.oexam.helper.HTML;
import com.interncareer.oexam.helper.Token;
import com.interncareer.oexam.mailMessenger.MailMessenger;
import com.interncareer.oexam.models.Role;
import com.interncareer.oexam.models.User;
import com.interncareer.oexam.repository.UserRepository;
import jakarta.mail.MessagingException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDateTime;
import java.util.Random;

@Controller
public class RegisterController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/register")
    public ModelAndView getRegister() {
        ModelAndView getRegisterPage = new ModelAndView("auth/register");
        System.out.println("In Register Page Controller");
        getRegisterPage.addObject("PageTitle","Register");
        return getRegisterPage;
    }

    @PostMapping("/register")
    public ModelAndView register(@Valid @ModelAttribute("registerUser") User user,
                                 BindingResult result,
                                 @RequestParam("role") String role,
                                 @RequestParam("confirm_password") String confirm_password,
                                 HttpServletRequest request
    ) throws MessagingException {
        ModelAndView registrationPage = new ModelAndView("auth/register");

        // Your validation and error handling code...

        // Check for existing email
        if (userRepository.getUserEmail(user.getEmail()) != null) {
            registrationPage.addObject("error", "Email already in use by another account");
            return registrationPage;
        }

        // Check for Errors
        if (result.hasErrors() && confirm_password.isEmpty()) {
            registrationPage.addObject("confirm_pass", "The confirm Field is Required");
            return registrationPage;
        }

        // TODO: CHECK FOR PASSWORD MATCH
        if (!user.getPassword().equals(confirm_password)) {
            registrationPage.addObject("passwordMisMatch", "Password do not Match");
            return registrationPage;
        }
        // Set the user role based on the selected option
        if ("Student".equals(role)) {
            user.setRole(Role.STUDENT);
        } else if ("Teacher".equals(role)) {
            user.setRole(Role.TEACHER);
        } else {
            // Handle the case when the role is not recognized
            registrationPage.addObject("error", "Invalid user role");
            return registrationPage;
        }

        // TODO: GET TOKEN STRING
        String token = Token.generateToken();
        // TODO: GENERATE RANDOM CODE
        Random rand = new Random();
        int bound = 123;
        int code = bound * rand.nextInt(bound);

        // TODO: Get email HTML body
        String emailBody = HTML.htmlEmailTemplate(request,token, code);
        // TODO: HASH PASSWORD
        String hashed_password = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());

        // TODO: SET VALUES IN THE USER OBJECT
        user.setToken(token);
        user.setVerified(false);
        user.setCode(String.valueOf(code));
        user.setPassword(hashed_password);
        user.setCreated_at(LocalDateTime.now());
        // TODO: REGISTER USER
        userRepository.save(user);

        // TODO: SEND EMAIL NOTIFICATION
        MailMessenger.htmlEmailMessenger("abasiama@gmail.com", user.getEmail(), "Verify Account", emailBody);
        // TODO: Return to Register Page
        String successMessage = "Account Registered Successfully, Kindly Check your Email to Verify Account";
        registrationPage.addObject("SUCCESS", successMessage);
        return registrationPage;
    }
}
