package com.assignment3;


import com.assignment3.entity.StoreInformation;
import com.assignment3.repository.StoreInformationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class UserController {

	@Autowired
	private StoreInformationRepository storeInformationRepository;

	@GetMapping("/")
	public String home() {
		return "index";
	}

	@PostMapping("/signup")
	public String signUp(@RequestParam String email, @RequestParam String password,RedirectAttributes redirectAttributes){
		if(storeInformationRepository.findByStoreEmail(email) != null){
			redirectAttributes.addFlashAttribute("message", "Failed");
			redirectAttributes.addFlashAttribute("alertClass", "alert-danger");
			return "redirect:/";
		} else {
			StoreInformation n = new StoreInformation(email, password);
			storeInformationRepository.save(n);
			redirectAttributes.addFlashAttribute("message", "Success");
			redirectAttributes.addFlashAttribute("alertClass", "alert-success");
			return "redirect:/";
		}
	}

	@PostMapping("/signin")
	public String signIn(@RequestParam String email, @RequestParam String password,RedirectAttributes redirectAttributes){
		StoreInformation checkMember = storeInformationRepository.findByStoreEmail(email);
		if(checkMember == null) {
			redirectAttributes.addFlashAttribute("message", "FindNoMembership");
			redirectAttributes.addFlashAttribute("alertClass", "alert-findNoMembership");
			return "redirect:/";
		} else if (!checkMember.getStorePassword().equals(password)){
			redirectAttributes.addFlashAttribute("message", "WrongPassword");
			redirectAttributes.addFlashAttribute("alertClass", "alert-wrongPassword");
			return "redirect:/";
		} else {
			return "member";
		}
	}
}
