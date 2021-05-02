package itiseveri.pcto.pcto.service;

import itiseveri.pcto.pcto.model.NonConformita;

import java.util.List;
import java.util.Optional;

public interface NonConformitaService {

    List<NonConformita> getNonConformitaAperte();
    List<NonConformita> getNonConformitaChiuse();
    Optional<NonConformita> getNonConformitaById(long codice);
    void createOrUpdateNonConformita(NonConformita nonConformita);
    void deleteNonConformita(long codice);
}
