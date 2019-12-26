package infnet.assessement.demo.controller;
import infnet.assessement.demo.repository.*;
import infnet.assessement.demo.validacao.CryptWithMD5;
import org.springframework.beans.factory.annotation.Autowired;

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


    Autor autor;

    @GetMapping(value = "/produtos")
    public String createPage(Map<String, Object> model) {
        model.put("message",null);
        model.put("success",false);
        return "secureadm/produtos";
    }

    @PostMapping(value = "/produtos")
    public String save(@RequestParam("titulo") String titulo,
                     @RequestParam("ano") String ano,
                     @RequestParam("editora") String editora,
                     @RequestParam("descricao") String descricao,
                     @RequestParam("nome") String nome,
                     @RequestParam("sobrenome") String sobrenome,
                     @RequestParam("setor" )String setor,
                     @RequestParam("tema") String tema,

                     Map<String,Object> model) {
        if (livroRepository.findByTitulo(titulo) != null) {
            model.put("message", "Titulo ja existe");
            model.put("success", false);
            return "redirect:/secureadm/produtos";
        }
        if (StringUtils.hasText(titulo) && StringUtils.hasText(ano) && StringUtils.hasText(editora)
                && StringUtils.hasText(descricao) && StringUtils.hasText(nome) && StringUtils.hasText(sobrenome)
                && StringUtils.hasText(setor) && StringUtils.hasText(tema) ) {
            Livro livro = new Livro(titulo,ano,editora,descricao,setor,tema);
            Autor autor = new Autor(nome,sobrenome);
            livroRepository.save(livro);
            autor.setLivro(livro);
            autorRepository.save(autor);
            model.put("message", "Livro cadastrado com sucesso");
            model.put("success", true);
            return "redirect:/secureadm/lista";
        } else {
            model.put("message", "Ops! Por favor preencha corretamente o formulario");
            model.put("success", false);
            return "/secureadm/produtos";
        }
    }

    @GetMapping(value = "/lista")
    public String listPage(Map<String, Object> model) {
        Iterable<Livro> livro = livroRepository.findAll();
        Iterable<Autor> autor = autorRepository.findAll();

        //model.put("livroLista", livro);
        model.put("autorLista", autor);

        return "secureadm/lista";
    }

    @RequestMapping(value = "/edicao", method = RequestMethod.GET)
    public String editPage( Map<String, Object> model,
                            @RequestParam ("id_livro") Long id) {
        Livro livro = livroRepository.findOne(id);
        List<Autor> autorList = livro.getAutor();
        if( autorList != null && !autorList.isEmpty()){
            Autor autor = autorList.get(0);
            model.put("autor", autor);
        }
        model.put("livro",livro);
    //    model.put("success",false);
        return "secureadm/edicao";
    }

    @PostMapping(value="/edicao")
    public String update(@RequestParam("titulo") String titulo,
                        @RequestParam("ano") String ano,
                        @RequestParam("editora") String editora,
                        @RequestParam("descricao") String descricao,
                        @RequestParam("nome") String nome,
                        @RequestParam("sobrenome") String sobrenome,
                        @RequestParam("id_livro") Long id_livro,
                        @RequestParam("id_autor") Long id_autor,
                        Map<String,Object> model) {
        Autor autor = autorRepository.findOne(id_autor);
        Livro livro = livroRepository.findOne(id_livro);

        livro.setTitulo(titulo);
        livro.setAno(ano);
        livro.setEditora(editora);
        livro.setDescricao(descricao);
        autor.setNome(nome);
        autor.setSobrenome(sobrenome);
        autorRepository.save(autor);
        livroRepository.save(livro);
        model.put("livro",livro);
        model.put("autor", autor);
        model.put("message", "Edicao realizada com sucesso");
        model.put("success", false);
        return"redirect:/secureadm/lista";
    }


    @GetMapping(value = "/delete")
    public String delete(@RequestParam("id_livro") Long id_livro, @RequestParam("id_autor") long id_autor) {

        autorRepository.delete(id_autor);
        livroRepository.delete(id_livro);
        return "redirect:/secureadm/lista";
    }

}
