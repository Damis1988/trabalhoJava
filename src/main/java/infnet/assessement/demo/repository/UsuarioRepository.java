package infnet.assessement.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UsuarioRepository  extends JpaRepository<Usuario,Long>  {

    Usuario findByEmail(String email);
    Usuario findBySenha(String senha);
    Usuario findEmailAndSenha(String email, String senha);
}
