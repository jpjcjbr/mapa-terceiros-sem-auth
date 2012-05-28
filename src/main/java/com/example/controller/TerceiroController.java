package com.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.example.model.Terceiro;

@Controller
public class TerceiroController {

	@Autowired
	private RestTemplate restTemplate;
	
	private @Autowired MapsController mapsController;
	
	@RequestMapping("/terceiros")
	public String listarTerceiros(Map<String, Object> map)
	{
		String url = "https://www.vpsa.com.br/vpsa/rest/externo/showroom/terceiros";
		Terceiro[] terceiros = restTemplate.getForObject(url, Terceiro[].class);
		
		map.put("terceiros", terceiros);
		
		return "terceiros";
	}
	
	@RequestMapping("/terceiros/{idTerceiro}")
	public String getTerceiroPorId(@PathVariable("idTerceiro") Long idTerceiro, Map<String, Object> map)
	{
		String url = "https://www.vpsa.com.br/vpsa/rest/externo/showroom/terceiros/" + idTerceiro;
		
		Terceiro terceiro = restTemplate.getForObject(url, Terceiro.class);
		
		List resultadoPesquisa = mapsController.search(terceiro.getEndereco().getEnderecoCompleto());
		
		if(resultadoPesquisa.size() > 0)
		{
			String enderecoFormatado = getEnderecoFormatado(resultadoPesquisa);
			
			map.put("endereco_formatado", enderecoFormatado);
			map.put("latitude", getLatitude(resultadoPesquisa));
			map.put("longitude", getLongitude(resultadoPesquisa));
		}
		else
		{
			map.put("latitude", 0);
			map.put("longitude", 0);
		}
		
		
		map.put("terceiro", terceiro);
		
		return "show";
	}

	private String getLatitude(List pesquisa) {
		return ((HashMap) ((HashMap)((HashMap)pesquisa.get(0)).get("geometry")).get("location")).get("lat").toString();
	}
	
	private String getLongitude(List pesquisa) {
		return ((HashMap) ((HashMap)((HashMap)pesquisa.get(0)).get("geometry")).get("location")).get("lng").toString();
	}

	private String getEnderecoFormatado(List pesquisa) {
		return (String) ((HashMap)pesquisa.get(0)).get("formatted_address");
	}
}
