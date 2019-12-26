package infnet.assessement.demo.controller;

import infnet.assessement.demo.repository.Livro;
import infnet.assessement.demo.repository.LivroRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController("rest/livro")
public class LivroRestController {

    @Autowired
    LivroRepository livroRepository;

    @GetMapping
    public Iterable<Livro> findAll() {
        return livroRepository.findAll();
    }

    @PostMapping
    public Livro save(@RequestBody Livro livro) {
        Livro saveBody = livroRepository.save(livro);
        return saveBody;
    }
}