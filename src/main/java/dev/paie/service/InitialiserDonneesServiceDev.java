package dev.paie.service;



import java.time.LocalDate;
import java.time.temporal.TemporalAdjusters;

import javax.persistence.EntityManager;
import javax.persistence.EnumType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dev.paie.entite.Avantage;
import dev.paie.entite.BulletinSalaire;
import dev.paie.entite.Cotisation;
import dev.paie.entite.Entreprise;
import dev.paie.entite.Grade;
import dev.paie.entite.Periode;
import dev.paie.entite.ProfilRemuneration;
import dev.paie.entite.RemunerationEmploye;
import dev.paie.entite.Utilisateur;
import dev.paie.entite.Utilisateur.ROLES;
import dev.paie.repository.UtilisateurRepository;



@Service
public class InitialiserDonneesServiceDev implements InitialiserDonneesService {
    
	@Autowired 
	private ApplicationContext context;
	
	@Autowired private PasswordEncoder passwordEncoder;
	
	@Autowired private UtilisateurRepository utilRep;
	
	@Autowired 
	private EntityManager em;

    @Override
    @Transactional
    public void initialiser() {
    	
    	utilRep.save(new Utilisateur("abdel",passwordEncoder.encode("pierre"),true,ROLES.valueOf("ROLE_ADMINISTRATEUR")));
    	utilRep.save(new Utilisateur("user",passwordEncoder.encode("user"),true,ROLES.valueOf("ROLE_UTILISATEUR")));
    	
    	
    	context.getBeansOfType(Avantage.class).forEach((nomBean, bean) -> em.persist(bean));
        context.getBeansOfType(Grade.class).forEach((nomBean, bean) -> em.persist(bean));
        context.getBeansOfType(Entreprise.class).forEach((nomBean, bean) -> em.persist(bean));
        context.getBeansOfType(Cotisation.class).forEach((nomBean, bean) -> em.persist(bean));
        context.getBeansOfType(Periode.class).forEach((nomBean, bean) -> em.persist(bean));
        context.getBeansOfType(BulletinSalaire.class).forEach((nomBean, bean) -> em.persist(bean));
        context.getBeansOfType(RemunerationEmploye.class).forEach((nomBean, bean) -> em.persist(bean));
        context.getBeansOfType(ProfilRemuneration.class).forEach((nomBean, bean) -> em.persist(bean));
        
        for (int i = 1; i < 13; i++) {
            LocalDate localdate = LocalDate.of(LocalDate.now().getYear(), i, 1);
            em.persist(new Periode( localdate, localdate.with(TemporalAdjusters.lastDayOfMonth())));
        }
    }

}