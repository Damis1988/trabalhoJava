package infnet.assessement.demo.controller;
import infnet.assessement.demo.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.Map;

@Controller
@RequestMapping("secureadm")
public class BibliotecaController {

    @Autowired
    LivroRepository livroRepository;

    @Autowired
    EstoqueRepository estoqueRepository;

    @Autowired
    BibliotecaRepository bibliotecaRepository;

    Livro livro;
    Estoque estoque;
    Biblioteca biblioteca;

    @GetMapping(value = "gerenciamento")
    public String createPage(Map<String, Object> model) {
        model.put("message",null);
        model.put("success",false);
        return "/secureadm/gerenciamento";
    }

    @PostMapping(value = "gerenciamento")
    public void save( @RequestParam("quantidade") Integer quantidade,
                       @RequestParam("tituloEmprestado") String tituloEmprestado,
                       @RequestParam("titulo") String titulo,
                       @RequestParam("id") Long id,
                       @RequestParam("dataFinal") Date dataFinal,
                       @RequestParam("dataInicio") Date dataInicio,
                       @RequestParam("prazo") String prazo,
                       Map<String,Object> model) {
        if (livroRepository.findByTitulo(titulo) == null) {
            model.put("message", "Titulo Não Existe");
            model.put("success", false);
            return;
        } else {
            biblioteca.setTituloEmprestado(tituloEmprestado);
        }

        if(estoqueRepository.findByQuantidade(quantidade) == null) {
            model.put("message", "Não disponivel no estoque");
            model.put("success", false);
            return;
        }
            biblioteca.setDataInicio(dataInicio);
            biblioteca.setDataFinal(dataFinal);
            biblioteca.setPrazo(prazo);
            Estoque estoque = estoqueRepository.findOne(id);
            estoque.setQuantidade(quantidade);
            estoque.setBiblioteca(biblioteca);
            estoqueRepository.save(estoque);
            model.put("estoque", estoque);
            model.put("message", "Operação realizada com sucesso");
            model.put("success", true);

    }
}
