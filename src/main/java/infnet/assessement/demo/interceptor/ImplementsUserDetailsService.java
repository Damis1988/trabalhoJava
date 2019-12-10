package infnet.assessement.demo.interceptor;

import infnet.assessement.demo.repository.Usuario;
import infnet.assessement.demo.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


import javax.transaction.Transactional;
import java.util.Optional;

@Service
public class ImplementsUserDetailsService implements UserDetailsService {

    @Autowired
    private UsuarioRepository usuarioRepository;

    private BCryptPasswordEncoder bCryptPasswordEncoder;


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<Usuario> usuario = usuarioRepository.findByEmail(username);

        if(usuario.isPresent()) {
           return usuario.get();
        }
        throw new UsernameNotFoundException("Usuario não existe, tente novamente");
    }

    public Usuario save(Usuario usuario) {
        usuario.setSenha(bCryptPasswordEncoder.encode(usuario.getPassword()));
        usuarioRepository.save(usuario);
        return  usuario;
    }
}
