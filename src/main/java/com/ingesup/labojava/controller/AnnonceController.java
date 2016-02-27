package com.ingesup.labojava.controller;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.ingesup.labojava.bean.Annonce;
import com.ingesup.labojava.bean.User;
import com.ingesup.labojava.factory.AnnonceFactory;
import com.ingesup.labojava.form.AnnonceFormBean;
import com.ingesup.labojava.service.UserService;
import com.ingesup.labojava.service.UserServiceImpl;

@Controller
@RequestMapping("/ad")
@SessionAttributes("user")
public class AnnonceController {

	// Injection des services

	private UserService userService = new UserServiceImpl();

	@Autowired(required = true)
	@Qualifier(value = "userService")
	public void setUserService(UserService us) {
		this.userService = us;
	}
	
	// Affichage de la page de cr�ation d'une annonce
	
	@RequestMapping(value="/create", method = RequestMethod.GET)
	public String displayAdCreationPage(final Model model) {
		
		model.addAttribute("adBean", new AnnonceFormBean());
		return "createAd";
	}
	
	
	// M�thode POST d'une annonce
	
	@RequestMapping(value="create/{studentID}")
	public ModelAndView createAdPost(@ModelAttribute("adBean") @Valid final AnnonceFormBean adFormBean, 
			@PathVariable(value="studentID") Long studentID, final BindingResult bindingResult) {
		
		ModelAndView mView = new ModelAndView();
		
		// V�rification de l'utilisateur
		
		if (studentID == 0) {
			
			String formStatus = "Vous n'�tes pas connect�! Connectez-vous pour publier une annonce.";
			
			mView.addObject("formStatus", formStatus);
			mView.setViewName("createAd");
			return mView;
		}
		
		
		// S'il y'a des erreurs
		
		if (bindingResult.hasErrors()) {
			
			String formStatus = "Adresse mail ou mot de passe invalides!";
			
			mView.addObject("formStatus", formStatus);
			mView.setViewName("createAd");
			return mView;
		}
		
		// Cr�ation de l'annonce
		
		AnnonceFactory annonceFactory = new AnnonceFactory();
		Annonce ad = annonceFactory.createAnnonce(adFormBean);
		
		// On cherche l'utilisateur, on ajoute son annonce, on le met � jour
		
		User user = userService.getUser(studentID);
		
		if (user != null) {
			
			user.addAnnonce(ad);
			userService.updateUser(user);
			
			mView.addObject("user", user);
			mView.setViewName("redirect:/profile");
			
			return mView;
		}
		
		String formStatus = "Utilisateur non trouv�!";
		mView.addObject("formStatus", formStatus);
		mView.setViewName("createAd");
		return mView;
	}

}
