package com.assignment3;


import com.assignment3.entity.User;
import com.assignment3.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class UserController {

	@Autowired
	private UserRepository storeInformationRepository;

	@GetMapping("/")
	public String home() {
		return "index";
	}

	@PostMapping("/signup")
	public String signUp(@RequestParam String email, @RequestParam String password, RedirectAttributes redirectAttributes) {
		if (storeInformationRepository.findByEmail(email) != null) {
			redirectAttributes.addFlashAttribute("message", "Failed");
			redirectAttributes.addFlashAttribute("alertClass", "alert-danger");
			return "redirect:/";
		} else {
			User n = new User(email, password);
			storeInformationRepository.save(n);
			return "member";
		}

	}

	@PostMapping("/signin")
	public String signIn(@RequestParam String email, @RequestParam String password, RedirectAttributes redirectAttributes) {
		User checkMember = storeInformationRepository.findByEmail(email);
		if (checkMember == null) {
			redirectAttributes.addFlashAttribute("message", "FindNoMembership");
			redirectAttributes.addFlashAttribute("alertClass", "alert-findNoMembership");
			return "redirect:/";
		} else if (!checkMember.getPassword().equals(password)) {
			redirectAttributes.addFlashAttribute("message", "WrongPassword");
			redirectAttributes.addFlashAttribute("alertClass", "alert-wrongPassword");
			return "redirect:/";
		} else {
			return "member";
		}
	}
}
