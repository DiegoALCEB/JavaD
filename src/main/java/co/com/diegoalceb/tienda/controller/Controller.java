package co.com.diegoalceb.tienda.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/tienda")
public class Controller {

    @GetMapping("")
    public ResponseEntity<Object> falsoGet(){
        return new ResponseEntity<Object>("<h1> BIENVENIDO A LA TIENDA :) </h1> <ul>" +
                "<li>Gaseosa</li>"+
                "<li>Cerveza</li>" +
                "<li>Jugo</li>" +
                "</ul>",HttpStatus.OK);
    }
}
