package com.jhinter.pruebaTecnica;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

import java.util.List;

@SpringBootApplication
public class TechnicalTestApplication {

	public static void main(String[] args) {
		SpringApplication.run(TechnicalTestApplication.class, args);
	}

	@Bean
	public CorsFilter activarCors() {
		CorsConfiguration cors = new CorsConfiguration();
		cors.setAllowCredentials(false);
		cors.setAllowedOrigins(List.of("*"));
		cors.setAllowedHeaders(List.of("Origin", "Access-Control-Allow-Origin", "Content-Type", "Accept", "Authorization", "Origin, Accept", "X-Requested-With", "Access-Control-Request-Method","Access-Control-Request-Headers"));
		cors.setExposedHeaders(List.of("Origin", "Content-Type", "Accept", "Authorization", "Access-Control-Allow-Origin", "Access-Control-Allow-Credentials"));
		cors.setAllowedMethods(List.of("GET"));

		UrlBasedCorsConfigurationSource corsPaths = new UrlBasedCorsConfigurationSource();
		corsPaths.registerCorsConfiguration("/**",  cors);

		return new CorsFilter(corsPaths);
	}
}
