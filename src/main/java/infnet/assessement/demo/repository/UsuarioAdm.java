package infnet.assessement.demo.repository;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import org.springframework.stereotype.Component;
import javax.persistence.*;


@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Component
@Table(name = "adm")
public class UsuarioAdm {

    public UsuarioAdm(String adm, String senha) {
        this.adm = adm;
        this.senha = senha;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String adm;
    @Column
    private String senha;

}