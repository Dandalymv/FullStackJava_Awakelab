package sprint.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GaleriaController {

	@RequestMapping(path = "/galeria", method = RequestMethod.GET)
    public ModelAndView mostrarHome() {
        return new ModelAndView("galeria");
    }
	
}
