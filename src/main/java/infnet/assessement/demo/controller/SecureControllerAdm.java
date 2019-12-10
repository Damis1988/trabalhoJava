package infnet.assessement.demo.controller;

import infnet.assessement.demo.interceptor.SessaoUsuario;
import infnet.assessement.demo.repository.UsuarioAdm;
import infnet.assessement.demo.repository.UsuarioAdmRepository;
import infnet.assessement.demo.validacao.CryptWithMD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;
@Controller
@RequestMapping("login")
public class SecureControllerAdm {

    @Autowired
    SessaoUsuario userSession;
    @Autowired
    UsuarioAdmRepository usuarioAdmRepository;

    @Autowired
    CryptWithMD5 cryptWithMD5;

    public String passwordCript(String senha) {

        String passwordCript;
        passwordCript = cryptWithMD5.cryptWithMD5(senha);
        return passwordCript;
    }

    @RequestMapping(value = "loginAdm", method = RequestMethod.GET)
    public String loginPage() {
        return "login";
    }

    @PostMapping(value = "doLogin")
    public String login(@RequestParam("adm") String adm, @RequestParam("senha") String senha,
                        Map<String, Object> model) {
        senha = passwordCript(senha);
        UsuarioAdm usuarioAdm = usuarioAdmRepository.findByAdmAndSenha(adm,senha);
        if (usuarioAdm != null) {
            userSession.addLoggedUserA(usuarioAdm);
            return "redirect:/secureAdm/lista";
        } else {
            model.put("message", "Login not valid");
            return null;
        }
    }

    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout() {
        userSession.removeLoggedUserA();
        return "logout";
    }
}
