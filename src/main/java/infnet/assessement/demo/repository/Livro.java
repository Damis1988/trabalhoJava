package infnet.assessement.demo.repository;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;
import javax.persistence.*;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "livro")
public class Livro {

    public Livro(String titulo, String ano, String editora, String descricao, String setor,
                 String tema) {
        this.titulo = titulo;
        this.ano = ano;
        this.editora = editora;
        this.descricao = descricao;
        this.setor = setor;
        this.tema = tema;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String titulo;
    @Column
    private String ano;
    @Column
    private String editora;
    @Column
    private String descricao;
    @Column
    private String setor;
    @Column
    private  String tema;


    @OneToMany(mappedBy = "livro",cascade = CascadeType.PERSIST)
    private List<Autor> autor;

   }
