package infnet.assessement.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EstoqueRepository  extends JpaRepository<Estoque,Long> {
    Estoque findByQuantidade(Integer quantidade);
}
