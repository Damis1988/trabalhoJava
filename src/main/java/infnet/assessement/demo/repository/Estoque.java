package infnet.assessement.demo.repository;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "estoque")
public class Estoque {

    public Estoque(Integer quantidade, Livro livro) {
        this.quantidade = quantidade;
        this.livro = livro;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private Integer quantidade;

    @OneToOne
    @JoinColumn(name = "id_estoquebibli")
    private Biblioteca biblioteca;

    @ManyToOne
    @JoinColumn(name = "id_estoquelivro")
    private Livro livro;
   }
