package dev.paie.config.aspect;

import java.time.LocalDateTime;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import dev.paie.entite.Performance;
import dev.paie.repository.PerformanceRepository;

@Configuration
@Aspect
public class ControllerPerformanceAspect {
	
	@Autowired PerformanceRepository performanceRepo;
	
	private static final Logger LOGGER = LoggerFactory.getLogger(ControllerPerformanceAspect.class);

	@Around("execution(* dev.paie.web.controller.*.*(..))")

	public Object logPerf(ProceedingJoinPoint pjp) throws Throwable {
		
		Long timeavant = System.currentTimeMillis(); 
		LOGGER.debug("Début d'exécution de la méthode " + pjp.getSignature().toString());
		Object resultat = pjp.proceed();
		LOGGER.debug("Fin d'exécution de la méthode");
		Long timeapres = System.currentTimeMillis(); 

		Performance perfo = new Performance(pjp.getSignature().toString(),LocalDateTime.now(),timeapres - timeavant);
		performanceRepo.saveAndFlush(perfo);
		return resultat;
		
		

	}
}