package infnet.assessement.demo.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface LivroRepository  extends JpaRepository<Livro,Long> {
        Livro findByTitulo(String titulo);
}
