package com.interncareer.oexam.helper;

import jakarta.servlet.http.HttpServletRequest;

import java.net.MalformedURLException;
import java.net.URL;

public class HTML {
    public static String htmlEmailTemplate(HttpServletRequest request, String token, int code) {
        // Constructing the full URL using the request object
        String baseUrl = getBaseUrl(request);
        String url = baseUrl + "/verify?token=" + token + "&code=" + code;

        String emailTemplate = "<!DOCTYPE html>\n" +
                "<html lang='en'>\n" +
                "\n" +
                "<head>\n" +
                "    <meta charset='UTF-8'>\n" +
                "    <meta http-equiv='X-UA-Compatible' content='IE=edge'>\n" +
                "    <meta name='viewport' content='width=device-width, initial-scale=1.0'>\n" +
                "    <!-- <link rel='stylesheet' href='css/email.css'> -->\n" +
                "    <title>Email</title>\n" +
                "    <style>\n" +
                "        @import url('https://fonts.googleapis.com/css2?family=Comfortaa&display=swap');\n" +
                "        * {\n" +
                "            box-sizing: border-box;\n" +
                "            font-family: Comfortaa;\n" +
                "        }\n" +
                "        /* Main Body Styling */\n" +
                "        \n" +
                "        body {\n" +
                "            height: 100vh;\n" +
                "            background-color: rgb(212, 222, 230);\n" +
                "            display: flex;\n" +
                "            align-items: center;\n" +
                "            justify-content: center;\n" +
                "        }\n" +
                "        /* <!-- Wrapper -->*/\n" +
                "        \n" +
                "        .wrapper {\n" +
                "            width: 550px;\n" +
                "            height: auto;\n" +
                "            padding: 15px;\n" +
                "            background-color: white;\n" +
                "            border-radius: 7px;\n" +
                "        }\n" +
                "        /* <!-- Email MSG Header --> */\n" +
                "        \n" +
                "        .email-msg-header {\n" +
                "            text-align: center;\n" +
                "            font-size: 20px;\n" +
                "        }\n" +
                "        /* <!-- Company Name --> */\n" +
                "        \n" +
                "        .company-name {\n" +
                "            width: 100%;\n" +
                "            font-size: 35px;\n" +
                "            color: gray;\n" +
                "            text-align: center;\n" +
                "        }\n" +
                "        /* <!-- Welcome Text --> */\n" +
                "        \n" +
                "        .welcome-text {\n" +
                "            text-align: center;\n" +
                "        }\n" +
                "        /* <!-- Verify Account Button --> */\n" +
                "        \n" +
                "        .verify-account-btn {\n" +
                "            padding: 15px;\n" +
                "            background-color: rgb(0, 109, 252);\n" +
                "            text-decoration: none;\n" +
                "            color: white;\n" +
                "            border-radius: 5px;\n" +
                "        }\n" +
                "        /* <!-- Copy Right Wrapper --> */\n" +
                "        \n" +
                "        .copy-right {\n" +
                "            padding: 15px;\n" +
                "            color: gray;\n" +
                "            font-size: 14px;\n" +
                "            margin: 20px 0px;\n" +
                "            display: flex;\n" +
                "            align-items: center;\n" +
                "            justify-content: center;\n" +
                "        }\n" +
                "    </style>\n" +
                "</head>\n" +
                "\n" +
                "<body>\n" +
                "    <!-- Wrapper -->\n" +
                "    <div class='wrapper'>\n" +
                "        <!-- Email MSG Header -->\n" +
                "        <h2 class='email-msg-header'>\n" +
                "            Welcome and Thank You for Choosing\n" +
                "        </h2>\n" +
                "        <!-- End of Email MSG Header -->\n" +
                "\n" +
                "        <!-- Company Name -->\n" +
                "        <div class='company-name'>InternCareer O.Exam</div>\n" +
                "        <!--End of  Company Name -->\n" +
                "        <hr>\n" +
                "        <!-- Welcome Text -->\n" +
                "        <p class='welcome-text'>\n" +
                "            Your Account has been successfully registered, click below to verify your Account\n" +
                "        </p>\n" +
                "        <!--End of Welcome Text -->\n" +
                "        <br><br>\n" +
                "        <!-- Verify Account Button -->\n" +
                "        <center><a href='" + url + "' class='verify-account-btn' role='button'>Verify Account</a>\n" +
                "        </center>\n" +
                "        <!--End of Verify Account Button -->\n" +
                "\n" +
                "        <!-- Copy Right Wrapper -->\n" +
                "        <div class='copy-right'>\n" +
                "            &copy; InternCareer 2023. All Rights Reserved.\n" +
                "        </div>\n" +
                "        <!-- End of Copy Right Wrapper -->\n" +
                "    </div>\n" +
                "    <!-- End of Wrapper -->\n" +
                "</body>\n" +
                "\n" +
                "</html>";
        return emailTemplate;
    }
    public static String htmlForgotPasswordEmailTemplate(HttpServletRequest request, String token, int code) {
        // Constructing the full URL using the request object
        String baseUrl = getBaseUrl(request);
        String url = baseUrl + "/reset-password?token=" + token + "&code=" + code;

        String emailTemplate = "<!DOCTYPE html>\n" +
                "<html lang='en'>\n" +
                "\n" +
                "<head>\n" +
                "    <meta charset='UTF-8'>\n" +
                "    <meta http-equiv='X-UA-Compatible' content='IE=edge'>\n" +
                "    <meta name='viewport' content='width=device-width, initial-scale=1.0'>\n" +
                "    <!-- <link rel='stylesheet' href='css/email.css'> -->\n" +
                "    <title>Email</title>\n" +
                "    <style>\n" +
                "        @import url('https://fonts.googleapis.com/css2?family=Comfortaa&display=swap');\n" +
                "        * {\n" +
                "            box-sizing: border-box;\n" +
                "            font-family: Comfortaa;\n" +
                "        }\n" +
                "        /* Main Body Styling */\n" +
                "        \n" +
                "        body {\n" +
                "            height: 100vh;\n" +
                "            background-color: rgb(212, 222, 230);\n" +
                "            display: flex;\n" +
                "            align-items: center;\n" +
                "            justify-content: center;\n" +
                "        }\n" +
                "        /* <!-- Wrapper -->*/\n" +
                "        \n" +
                "        .wrapper {\n" +
                "            width: 550px;\n" +
                "            height: auto;\n" +
                "            padding: 15px;\n" +
                "            background-color: white;\n" +
                "            border-radius: 7px;\n" +
                "        }\n" +
                "        /* <!-- Email MSG Header --> */\n" +
                "        \n" +
                "        .email-msg-header {\n" +
                "            text-align: center;\n" +
                "            font-size: 20px;\n" +
                "        }\n" +
                "        /* <!-- Company Name --> */\n" +
                "        \n" +
                "        .company-name {\n" +
                "            width: 100%;\n" +
                "            font-size: 35px;\n" +
                "            color: gray;\n" +
                "            text-align: center;\n" +
                "        }\n" +
                "        /* <!-- Welcome Text --> */\n" +
                "        \n" +
                "        .welcome-text {\n" +
                "            text-align: center;\n" +
                "        }\n" +
                "        /* <!-- Verify Account Button --> */\n" +
                "        \n" +
                "        .verify-account-btn {\n" +
                "            padding: 15px;\n" +
                "            background-color: rgb(0, 109, 252);\n" +
                "            text-decoration: none;\n" +
                "            color: white;\n" +
                "            border-radius: 5px;\n" +
                "        }\n" +
                "        /* <!-- Copy Right Wrapper --> */\n" +
                "        \n" +
                "        .copy-right {\n" +
                "            padding: 15px;\n" +
                "            color: gray;\n" +
                "            font-size: 14px;\n" +
                "            margin: 20px 0px;\n" +
                "            display: flex;\n" +
                "            align-items: center;\n" +
                "            justify-content: center;\n" +
                "        }\n" +
                "    </style>\n" +
                "</head>\n" +
                "\n" +
                "<body>\n" +
                "    <!-- Wrapper -->\n" +
                "    <div class='wrapper'>\n" +
                "        <!-- Email MSG Header -->\n" +
                "        <h2 class='email-msg-header'>\n" +
                "            Welcome and Thank You for Choosing\n" +
                "        </h2>\n" +
                "        <!-- End of Email MSG Header -->\n" +
                "\n" +
                "        <!-- Company Name -->\n" +
                "        <div class='company-name'>InternCareer O.Exam</div>\n" +
                "        <!--End of  Company Name -->\n" +
                "        <hr>\n" +
                "        <!-- Welcome Text -->\n" +
                "        <p class='welcome-text'>\n" +
                "            You've attempted to reset your password, click below to reset your password\n" +
                "        </p>\n" +
                "        <!--End of Welcome Text -->\n" +
                "        <br><br>\n" +
                "        <!-- Verify Account Button -->\n" +
                "        <center><a href='" + url + "' class='verify-account-btn' role='button'>Reset Password</a>\n" +
                "        </center>\n" +
                "        <!--End of Verify Account Button -->\n" +
                "\n" +
                "        <!-- Copy Right Wrapper -->\n" +
                "        <div class='copy-right'>\n" +
                "            &copy; InternCareer 2023. All Rights Reserved.\n" +
                "        </div>\n" +
                "        <!-- End of Copy Right Wrapper -->\n" +
                "    </div>\n" +
                "    <!-- End of Wrapper -->\n" +
                "</body>\n" +
                "\n" +
                "</html>";
        return emailTemplate;
    }
    private static String getBaseUrl(HttpServletRequest request) {
        String scheme = request.getScheme();
        String serverName = request.getServerName();
        int serverPort = request.getServerPort();
        return scheme + "://" + serverName + ":" + serverPort;
    }
}
