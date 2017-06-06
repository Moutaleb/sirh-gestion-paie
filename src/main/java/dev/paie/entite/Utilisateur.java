package dev.paie.entite;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Utilisateur {

	public enum ROLES {
		ROLE_ADMINISTRATEUR, ROLE_UTILISATEUR
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	private String nomUtilisateur;
	private String motDePasse;
	private Boolean estActif;
	@Enumerated(EnumType.STRING)
	private ROLES role;
	

	public Utilisateur() {
		super();
	}


	public Utilisateur(String nomUtilisateur, String motDePasse, Boolean estActif, ROLES role) {
		super();
		this.nomUtilisateur = nomUtilisateur;
		this.motDePasse = motDePasse;
		this.estActif = estActif;
		this.role = role;
	}

	
	
}