package com.example.Assignments;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Cookie;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class UserController {
    @GetMapping("/myName")
    public String showUserNamePage(Model model, @CookieValue(value = "username", required = false) String username) {
        if (username == null || username.isEmpty()) {
            return "redirect:/trackName";
        }
        model.addAttribute("username", username);
        return "userNamePage";
    }

    @GetMapping("/trackName")
    public String showUserNameFormPage() {
        return "userNameForm";
    }

    @RequestMapping("/trackName")
    public String setCookie(@RequestParam("username") String username,HttpServletResponse response) {
        Cookie cookie = new Cookie("username", username);
        response.addCookie(cookie);

        return "redirect:/myName";
    }
}
