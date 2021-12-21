package sprint.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import sprint.model.entity.Oficina;
import sprint.model.service.OficinaService;


/*
░█▀▀█ ░█▀▀█ ░█─░█ ░█▀▀▄ 
░█─── ░█▄▄▀ ░█─░█ ░█─░█ 
░█▄▄█ ░█─░█ ─▀▄▄▀ ░█▄▄▀
*/

@Controller
public class OficinaController {
	
	@Autowired
	private OficinaService os;
	

//-----------------------------CREAR OFICINA-----------------------------
	@PostMapping(value = "/crearOficina")
	public String crearOficina(Oficina oficina) {
		os.create(oficina);
		return "redirect:/oficinas";
	}
//-----------------------------------------------------------------------

//-----------------------------LISTAR OFICINA----------------------------
	@RequestMapping(path = "/oficinas", method = RequestMethod.GET)
    public ModelAndView mostrarPagina() {	
		List<Oficina> oficinas = os.getAll();	
        return new ModelAndView("oficinas", "oficinas", oficinas);
    }
//-----------------------------------------------------------------------

//---------------------------ACTUALIZAR OFICINA--------------------------
	@RequestMapping("/editarOficina")
	public ModelAndView editarAdm(@RequestParam int id) {
		ModelAndView mav = new ModelAndView("oficinaEdit");
		Oficina oficina = os.get(id);
		mav.addObject("oficina", oficina);
		return mav;
	}
//-----------------------------------------------------------------------
	
	
//----------------------------ELIMINAR OFICINA---------------------------
	@GetMapping("/oficinas/deleteOficina/{id}")
	public String deletePro(@PathVariable int id) {
		os.deleteById(id);
		return "redirect:/oficinas";
	}
//-----------------------------------------------------------------------

	

	
}
