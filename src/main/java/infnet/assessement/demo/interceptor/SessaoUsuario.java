package infnet.assessement.demo.interceptor;

import infnet.assessement.demo.repository.Usuario;
import infnet.assessement.demo.repository.UsuarioAdm;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

@Scope(value = "session", proxyMode= ScopedProxyMode.TARGET_CLASS)
@Component
public class SessaoUsuario {

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

    public void addLoggedUserA(UsuarioAdm c) {
        this.usuarioAdm = c;
    }

    public Usuario getLoggedUserA() {
        return usuarioAdm;
    }

    public void removeLoggedUserA() {
        this.usuarioAdm = null;
    }
}
