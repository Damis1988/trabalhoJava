package infnet.assessement.demo.controller;

import infnet.assessement.demo.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("login")
public class LoginController {

    @Autowired
    ClientRepository clientRepository;
    @Autowired
    ClientSession clientSession;
    @Autowired
    CryptWithMD5 cryptWithMD5;

    public String passwordCript(String password) {

        String passwordCript;
        passwordCript = cryptWithMD5.cryptWithMD5(password);
        return passwordCript;
    }

    @GetMapping (value = "doLogin")
    public String loginPage() {
        return "login/doLogin";
    }

    @PostMapping(value = "doLogin")
    public String login(@RequestParam("email") String email, @RequestParam("password") String password,
                        Map<String, Object> model) {
        password = passwordCript(password);
        Client client = clientRepository.findByEmailAndPassword(email,password);
        if (client != null) {
            clientSession.addLoggedUser(client);
            return "redirect:/secure";
        } else {
            model.put("message", "Login not valid");
            return null;
        }
    }

    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout() {
        clientSession.removeLoggedUser();
        return "login/doLogin";
    }

}
