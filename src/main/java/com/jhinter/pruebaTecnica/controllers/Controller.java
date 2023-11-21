package com.jhinter.pruebaTecnica.controllers;

import com.jhinter.pruebaTecnica.repository.Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/catalog")
public class Controller {

    @Autowired
    private Repository repository;

    @GetMapping("/getAll")
    public ResponseEntity readCatalog() {
        List registro = repository.findAll();

        return ResponseEntity.ok(registro);
    }
}
