package itiseveri.pcto.pcto.service;

import itiseveri.pcto.pcto.model.Lavoratore;

import java.util.List;
import java.util.Optional;

public interface LavoratoreService {
    List<Lavoratore> getAllLavoratori();
    Optional<Lavoratore> getLavoratoreById(long matricola);
    void createOrUpdateLavoratore(Lavoratore lavoratore);
    void deleteLavoratore(long matricola);

}
