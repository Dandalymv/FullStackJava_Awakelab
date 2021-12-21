package sprint.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegistroOficinaController {

	@RequestMapping(path = "/registrarOficina", method = RequestMethod.GET)
    public ModelAndView mostrarPagina() {
        return new ModelAndView("registroOficina");
    }
	
}
