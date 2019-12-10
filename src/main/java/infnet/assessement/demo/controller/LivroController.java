package infnet.assessement.demo.controller;
import infnet.assessement.demo.repository.*;
import infnet.assessement.demo.validacao.CryptWithMD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;


import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("secureadm")
public class LivroController {

    @Autowired
    LivroRepository livroRepository;
    @Autowired
    CryptWithMD5 cryptWithMD5;
    @Autowired
    AutorRepository autorRepository;
    @Autowired
    EstoqueRepository estoqueRepository;

    Estoque estoque;
    Autor autor;

    @GetMapping(value = "produtos")
    public String createPage(Map<String, Object> model) {
        model.put("message",null);
        model.put("success",false);
        return "/secureadm/produtos";
    }
    @PreAuthorize("hasAnyRole('ADMIN')")
    @PostMapping(value = "produtos")
    public void save(@RequestParam("titulo") String titulo,
                     @RequestParam("ano") String ano,
                     @RequestParam("editora") String editora,
                     @RequestParam("descricao") String descricao,
                     @RequestParam("nome") String nome,
                     @RequestParam("sobrenome") String sobrenome,
                     @RequestParam("setor" )String setor,
                     @RequestParam("tema") String tema,
                     @RequestParam("quantidade") Integer quantidade,
                     Map<String,Object> model) {
        if (livroRepository.findByTitulo(titulo) != null) {
            model.put("message", "Titulo ja existe");
            model.put("success", false);
            return;
        }
        if (StringUtils.hasText(titulo) && StringUtils.hasText(ano) && StringUtils.hasText(editora)
                && StringUtils.hasText(descricao) && StringUtils.hasText(nome) && StringUtils.hasText(sobrenome)
                && StringUtils.hasText(setor) && StringUtils.hasText(tema)) {
            Livro livro = new Livro(titulo,ano,editora,descricao,setor,tema);
            Autor autor = new Autor(nome,sobrenome);
            Estoque estoque = new Estoque(quantidade);
            livroRepository.save(livro);
            autorRepository.save(autor);
            estoqueRepository.save(estoque);
            model.put("message", "Livro cadastrado com sucesso");
            model.put("success", true);
        } else {
            model.put("message", "Ops! Por favor preencha corretamente o formulario");
            model.put("success", false);
        }
    }

    @GetMapping(value = "lista")
    public String listPage(Map<String, Object> model) {
        Iterable<Livro> all = livroRepository.findAll();
        Iterable<Autor> autors = autorRepository.findAll();
        Iterable<Estoque> estoques = estoqueRepository.findAll();
        model.put("livroLista", all);
        model.put("autorLista", autors);
        model.put("estoqueLista", estoques);
        return "secureadm/lista";
    }

    @GetMapping(value = "edicao")
    public String editPage(@RequestParam("id") Long id, Map<String, Object> model) {
        Livro livro = livroRepository.findOne(id);
        model.put("livro", livro);
        return "secureadm/edicao";
    }

    @PostMapping(value="edicao/{id}")
    public void update(@RequestParam("titulo") String titulo,
                        @RequestParam("ano") String ano,
                        @RequestParam("editora") String editora,
                        @RequestParam("descricao") String descricao,
                        @RequestParam("nome") String nome,
                        @RequestParam("sobrenome") String sobrenome,
                        @RequestParam("quantidade") Integer quantidade,
                        @RequestParam("id") Long id,
                        Map<String,Object> model) {
        if (livroRepository.findByTitulo(titulo) == null) {
            model.put("message", "Titulo não existe");
            model.put("success", false);
            return;
        }
        autor.setNome(nome);
        autor.setSobrenome(sobrenome);
        estoque.setQuantidade(quantidade);
        Livro livro = livroRepository.findOne(id);
        livro.setTitulo(titulo);
        livro.setAno(ano);
        livro.setEditora(editora);
        livro.setDescricao(descricao);
        estoque.setLivro(livro);
        autorRepository.save(autor);
        estoqueRepository.save(estoque);
        livroRepository.save(livro);
        model.put("livro",livro);
        model.put("estoque", estoque);
        model.put("autor", autor);
        model.put("message", "livro " + titulo + " editado");
    }

    @GetMapping(value = "delete/{id}")
    public String delete(@PathVariable long id) {
        Livro livro = livroRepository.findOne(id);
        List<Estoque> estoqueList = livro.getEstoque();
        for(Estoque estoque : estoqueList) {
            estoque.setLivro(null);
        }
        List<Autor> autorList = livro.getAutor();
        for(Autor autor : autorList) {
            autor.setLivro(null);
        }
        livro.setEstoque(null);
        livro.setAutor(null);

        estoqueRepository.delete(estoqueList);
        autorRepository.delete(autorList);

        livroRepository.delete(livro);
        return "/secureadm/lista";
    }

}
