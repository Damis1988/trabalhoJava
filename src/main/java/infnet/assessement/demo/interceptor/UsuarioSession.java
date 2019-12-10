package infnet.assessement.demo.interceptor;

import infnet.assessement.demo.repository.Usuario;
import infnet.assessement.demo.repository.UsuarioAdm;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

@Scope(value = "session", proxyMode= ScopedProxyMode.TARGET_CLASS)
@Component
public class UsuarioSession {

    Usuario usuario;
    UsuarioAdm usuarioAdm;

    public void addLoggedUser(Usuario c) {
        this.usuario = c;
    }

    public Usuario getLoggedUser() {
        return usuario;
    }

    public void removeLoggedUser() {
        this.usuario = null;
    }

    public void addLoggedUserA(UsuarioAdm a) {
        this.usuarioAdm = a;
    }

    public UsuarioAdm getLoggedUserA() {
        return usuarioAdm;
    }

    public void removeLoggedUserA() {
        this.usuarioAdm = null;
    }
}
