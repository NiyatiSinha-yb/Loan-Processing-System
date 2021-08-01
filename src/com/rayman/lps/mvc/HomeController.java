package com.rayman.lps.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String showPage() {
<<<<<<< HEAD
		return "main-menu";
=======
		return "newlogin";
>>>>>>> 1fb36d06ec8a91aba542663541f06c5d5b191d69
	}
}
