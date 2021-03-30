package co.com.diegoalceb.tienda.controller;

import co.com.diegoalceb.tienda.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/tienda")
public class Controller {

    @Autowired
    private ProductRepository productRepository;

    @GetMapping("")
    public ResponseEntity<Object> falsoGet(){
        return new ResponseEntity<Object>(productRepository.findAll(),HttpStatus.OK);
    }
}
