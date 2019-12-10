package infnet.assessement.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("secure")
public class InicioController {


    @RequestMapping(value = "main", method = RequestMethod.GET)
    public String inicio() {
        return "/secure/main";
    }
}
