package dev.paie.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dev.paie.entite.Entreprise;
import dev.paie.repository.EntrepriseRepository;
import dev.paie.repository.GradeRepository;
import dev.paie.repository.ProfilRepository;

@Controller
@RequestMapping("/employes")
public class RemunerationEmployeController {

	@Autowired private EntrepriseRepository entreprise;
	@Autowired private ProfilRepository profil;
	@Autowired private GradeRepository grade;
	
	@RequestMapping(method = RequestMethod.GET, path = "/creerEmploye")
	public ModelAndView creerEmploye() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("employes/creerEmploye");
		mv.addObject("prefixMatricule","M00");
		mv.addObject("entreprise",entreprise.findAll());
		mv.addObject("profil",profil.findAll());
		mv.addObject("grade",grade.findAll());
		
		return mv;

	}

}