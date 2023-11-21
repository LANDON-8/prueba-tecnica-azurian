package com.jhinter.pruebaTecnica.repository;

import com.jhinter.pruebaTecnica.models.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface Repository extends JpaRepository<Movie, Long> {
    List<Movie> findAll();

}
