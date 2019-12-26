package infnet.assessement.demo.controller;

import infnet.assessement.demo.interceptor.SessaoUsuario;
import infnet.assessement.demo.repository.Usuario;
import infnet.assessement.demo.repository.UsuarioRepository;
import infnet.assessement.demo.validacao.CryptWithMD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;
@Controller
@RequestMapping("login")
public class LoginUController {

        @Autowired
        SessaoUsuario userSession;
        @Autowired
        UsuarioRepository usuarioRepository;

        @Autowired
        CryptWithMD5 cryptWithMD5;

        public String passwordCript(String senha) {

            String passwordCript;
            passwordCript = cryptWithMD5.cryptWithMD5(senha);
            return passwordCript;
        }

        @GetMapping(value = "doLogin")
        public String loginPage() {
            return "/login/doLogin";
        }

        @PostMapping(value = "doLogin")
        public String login(@RequestParam("email") String email, @RequestParam("senha") String senha,
                            Map<String, Object> model) {
            senha = passwordCript(senha);
            Usuario usuario = usuarioRepository.findByEmailAndSenha(email,senha);
            if (usuario != null) {
                userSession.addLoggedUser(usuario);
                return "redirect:/secure/main";
            } else {
                model.put("message", "Login not valid");
                return null;
            }
        }

        @RequestMapping(value = "/logout", method = RequestMethod.GET)
        public String logout() {
            userSession.removeLoggedUser();
            return "/logout";
        }
}

