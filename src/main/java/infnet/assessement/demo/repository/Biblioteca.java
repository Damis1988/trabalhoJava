package infnet.assessement.demo.repository;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import javax.persistence.*;
import java.util.Date;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "biblioteca")
public class Biblioteca {

    public Biblioteca( String tituloEmprestado, Date dataFinal, Date dataInicio, String prazo) {
        this.dataFinal = dataFinal;
        this.dataInicio = dataInicio;
        this.prazo = prazo;
        this.tituloEmprestado = tituloEmprestado;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String tituloEmprestado;
    @Column
    private Date dataFinal;
    @Column
    private Date dataInicio;
    @Column
    private String prazo;
    @OneToOne(mappedBy = "biblioteca", cascade = CascadeType.PERSIST)
    private Estoque estoque;
    @ManyToOne
    @JoinColumn(name = "id_usuario")
    private Usuario usuario;


}
