package sprint.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import sprint.model.entity.Contacto;
import sprint.model.entity.Oficina;
import sprint.model.service.ContactoService;


@Controller
public class ContactoController {
	
	@Autowired
	private ContactoService cs;
	
	@RequestMapping(path = "/contacto", method = RequestMethod.GET)
    public ModelAndView mostrarPagina() {
        return new ModelAndView("contacto");
    }
	//-----------------------------CREAR CONTACTO----------------------------
	@PostMapping(value = "/crearContacto")
	public String crearContacto(Contacto contacto) {
		cs.create(contacto);
		return "redirect:/contacto";
	}
	//-----------------------------------------------------------------------

	//-----------------------------LISTAR CONTACTO----------------------------
	@RequestMapping(path = "/contactoLista", method = RequestMethod.GET)
	public ModelAndView mostrarContactos() {	
		List<Contacto> contacto = cs.getAll();	
		return new ModelAndView("contactoLista", "contacto", contacto);
	}
	//-----------------------------------------------------------------------
	
	//---------------------------ACTUALIZAR CONTACTO--------------------------
		@RequestMapping("/editarContacto")
		public ModelAndView editarContacto(@RequestParam int id) {
			ModelAndView mav = new ModelAndView("contactoEdit");
			Contacto contacto = cs.get(id);
			mav.addObject("contacto", contacto);
			return mav;
		}
		
		@PostMapping(value = "/editarContactoLista")
		public String mostrarLista(Contacto contacto) {
			cs.create(contacto);
			return "redirect:/contactoLista";
		}
	//-----------------------------------------------------------------------
	
}
