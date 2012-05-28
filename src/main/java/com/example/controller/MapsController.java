package com.example.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.client.RestTemplate;

@Controller
public class MapsController {

	@Autowired
	private RestTemplate restTemplate;
	
	public List search(String endereco)
	{
		String url = "http://maps.googleapis.com/maps/api/geocode/json?sensor=false&language=en&address=" + endereco;
		
		ResponseEntity<HashMap> localizacao = restTemplate.getForEntity(url, HashMap.class, (Object)null);
		
		return (List) localizacao.getBody().get("results");
	}
}
