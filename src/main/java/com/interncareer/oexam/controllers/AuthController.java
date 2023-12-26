package com.interncareer.oexam.controllers;
import com.interncareer.oexam.helper.HTML;
import com.interncareer.oexam.helper.Token;
import com.interncareer.oexam.mailMessenger.MailMessenger;
import com.interncareer.oexam.models.Role;
import com.interncareer.oexam.models.User;
import com.interncareer.oexam.repository.UserRepository;
import jakarta.mail.MessagingException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Random;

@Controller
public class AuthController {
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/login")
    public ModelAndView getLogin() {
        System.out.println("In login Controller");
        ModelAndView getLoginPage = new ModelAndView("auth/login");
        String token = Token.generateToken();

        // Send Token To View;
        getLoginPage.addObject("token", token);
        getLoginPage.addObject("PageTitle", "Login");
        return getLoginPage;
    }

    @PostMapping("/login")
    public String login(@RequestParam("email") String email, @RequestParam("password") String password,
                        @RequestParam("_token") String token, Model model, HttpSession session) {
        // ToDo: Validate Input Field / Form Data
        if (email.isEmpty() || email == null || password == null) {
            model.addAttribute("error", "Username or Password cannot be Empty");
            return "login";
        }
        // ToDo: Check If Email Exist
        String getEmailFromDatabase = userRepository.getUserEmail(email);
        if (getEmailFromDatabase != null) {
            // Get Password IN Database
            String getPasswordInDatabase = userRepository.getUserPassword(email);
            // Validate Password
            if (!BCrypt.checkpw(password, getPasswordInDatabase)) {
                model.addAttribute("error", "Incorrect Username Or Password");
                return "login";
            } else {
                // ToDo: Check If User Account IS Verified
                boolean verified = userRepository.isVerified(getEmailFromDatabase);
                // Check If Account is Verified
                if (!verified) {
                    String msg = "This Account is not yet Verified, Kindly Check email and Verify Account";
                    model.addAttribute("error", msg);
                    return "login";
                }
                // End of Check if Account is Verified
                // ToDo: Proceed to Login User
                User user = userRepository.getUserDetails(getEmailFromDatabase);
                // Set Session Attributes
                session.setAttribute("user", user);
                session.setAttribute("token", token);
                session.setAttribute("authenticated", true);
                model.addAttribute("SUCCESS", "Login Successful");
                if (user.getRole() == Role.TEACHER) {
                    return "redirect:/teacherDashboard";
                } else {
                    return "redirect:/student/dashboard";
                }
            }
        } else {
            model.addAttribute("error", "Email Doesn't Exist");
            return "login";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session, RedirectAttributes redirectAttributes) {
        session.invalidate();
        redirectAttributes.addFlashAttribute("logged_out", "Logged Out Successful");
        return "redirect:/login";
    }

    @GetMapping("/forgot")
    public ModelAndView forgotPassword() {
        System.out.println("In ForgotPassword Controller");
        ModelAndView getForgotPassword = new ModelAndView("auth/forget");
        String token = Token.generateToken();

        // Send Token To View;
        getForgotPassword.addObject("token", token);
        getForgotPassword.addObject("PageTitle", "Forgot Password");
        return getForgotPassword;
    }

    @PostMapping("/forgot")
    public ModelAndView forGotPassword(@RequestParam("email")String email, HttpServletRequest request) throws MessagingException {
        ModelAndView modelAndView = new ModelAndView("auth/forget");
        String userEmail = userRepository.getUserEmail(email);
        User user  = userRepository.getUserDetails(userEmail);
        if(userEmail != null) {
            // TODO: GET TOKEN STRING
            String token = Token.generateToken();
            // TODO: GENERATE RANDOM CODE
            Random rand = new Random();
            int bound = 123;
            int code = bound * rand.nextInt(bound);
            user.setToken(token);
            user.setCode(String.valueOf(code));
            userRepository.save(user);
            String emailBody = HTML.htmlForgotPasswordEmailTemplate(request,token,code);
            MailMessenger.htmlEmailMessenger("abasiama@gmail.com", user.getEmail(), "Verify Account", emailBody);
            modelAndView.addObject("SUCCESS","Reset Password has been sent to this Mail");
            return modelAndView;
        }else{
            modelAndView.addObject("error", "Email Doesn't exist");
            return modelAndView;
        }
    }

    @GetMapping("/reset-password")
    public ModelAndView resetPassword(@RequestParam("token")String token,@RequestParam("code")String code) {

        ModelAndView modelAndView = new ModelAndView("auth/changePassword");
        modelAndView.addObject("token",token);
        modelAndView.addObject("code",code);
        return modelAndView;
    }

    @PostMapping("/reset-password")
    public ModelAndView resetPassWord(@RequestParam("token") String token,
                                      @RequestParam("code") String code,
                                      @RequestParam("password") String password,
                                      @RequestParam("confirm_password") String confirm_password
                                      ) {
        ModelAndView changePasswordPage = new ModelAndView("auth/changePassword");
        // Check for Errors
        if (password.isEmpty()) {
            changePasswordPage.addObject("password", "The password Field is Required");
            return changePasswordPage;
        }
        if (confirm_password.isEmpty()) {
            changePasswordPage.addObject("confirm_pass", "The confirm Field is Required");
            return changePasswordPage;
        }
        // TODO: CHECK FOR PASSWORD MATCH
        if (password.equals(confirm_password)) {
            changePasswordPage.addObject("passwordMisMatch", "Password do not Match");
            return changePasswordPage;
        }
        // TODO: HASH PASSWORD
        String hashed_password = BCrypt.hashpw(password, BCrypt.gensalt());

        userRepository.updatePassword(token,code,hashed_password);

        ModelAndView getLoginPage = new ModelAndView("auth/login");
        getLoginPage.addObject("SUCCESS","Password Reset Successful");
        return getLoginPage;
    }
}
