package infnet.assessement.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioAdmRepository  extends JpaRepository<UsuarioAdm,Long> {
    UsuarioAdm findByAdmAndPassword(String adm,String password);
    UsuarioAdm findByAdm(String adm);
}
