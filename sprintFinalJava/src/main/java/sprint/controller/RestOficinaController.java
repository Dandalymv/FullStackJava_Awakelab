package sprint.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import sprint.model.entity.Oficina;
import sprint.model.service.OficinaService;


@RestController
public class RestOficinaController {

	@Autowired
	private OficinaService os;
	
	@RequestMapping(value="/api/oficinas", headers = "Accept=application/json")
	public List<Oficina> getOficinas(){
		
		return os.getAll();
	}
	
}
