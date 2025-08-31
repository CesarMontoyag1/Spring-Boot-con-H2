package com.eafit.nutrition.repository;

import com.eafit.nutrition.model.Nutricionista;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface NutricionistaRepository extends JpaRepository<Nutricionista, Long> {
    Optional<Nutricionista> findByNumeroLicencia(String numeroLicencia);
    Optional<Nutricionista> findByEmail(String email);
}
