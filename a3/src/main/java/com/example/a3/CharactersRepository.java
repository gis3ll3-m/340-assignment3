package com.example.a3;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CharactersRepository extends JpaRepository<Characters, Long>{
    List<Characters> findByBellyBadge(String bellyBadge);
    List<Characters> findByNameContaining(String name);
}