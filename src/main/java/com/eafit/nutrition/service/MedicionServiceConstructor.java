package com.eafit.nutrition.service;

import com.eafit.nutrition.model.Medicion;

import com.eafit.nutrition.repository.MedicionRepository;

import com.eafit.nutrition.repository.PacienteRepository;

import com.eafit.nutrition.repository.NutricionistaRepository;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import java.util.Optional;

@Service

public class MedicionServiceConstructor {

    private final MedicionRepository medicionRepository;

    private final PacienteRepository pacienteRepository;

    private final NutricionistaRepository nutricionistaRepository;

    // Constructor que recibe los repositorios necesarios

    // Spring automáticamente inyecta las implementaciones apropiadas

    public MedicionServiceConstructor(

            MedicionRepository medicionRepository,

            PacienteRepository pacienteRepository,

            NutricionistaRepository nutricionistaRepository) {

        this.medicionRepository = medicionRepository;

        this.pacienteRepository = pacienteRepository;

        this.nutricionistaRepository = nutricionistaRepository;

    }

    @Transactional(readOnly = true)
    public List<Medicion> findAll() {

        return medicionRepository.findAll();

    }

    @Transactional(readOnly = true)

    public Optional<Medicion> findById(Long id) {

        return medicionRepository.findById(id);

    }



    // Otros métodos del servicio (omitidos por brevedad)

}