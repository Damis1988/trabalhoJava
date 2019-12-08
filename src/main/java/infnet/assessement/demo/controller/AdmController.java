package infnet.assessement.demo.controller;

import infnet.assessement.demo.repository.UsuarioAdm;
import infnet.assessement.demo.repository.UsuarioAdmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

//@RequestMapping("login")
//@Controller
//public class AdmController {
//
//    @Autowired
//    UsuarioAdmRepository usuarioAdmRepository;
//
//    @RequestMapping(value = "doLogin", method = RequestMethod.GET)
//    public String loginPage() {
//        return "login";
//    }
//
//    @RequestMapping(value = "doLogin", method = RequestMethod.POST)
//    public String login(@RequestParam("adm") String adm,
//                        @RequestParam("password") String password,
//                        Map<String, Object> model) {
//        UsuarioAdm u = usuarioAdmRepository.findByAdmAndPassword(adm,password);
//        if (u != null) {
//            clientSession.addLoggedUser(client);
//            return "redirect:/secure";
//        } else {
//            model.put("message", "Login not valid");
//            return null;
//        }
//    }
//
//    @RequestMapping(value = "logout", method = RequestMethod.GET)
//    public String logout() {
//        userSession.removeLoggedUser();
//        return "login";
//    }
//}
