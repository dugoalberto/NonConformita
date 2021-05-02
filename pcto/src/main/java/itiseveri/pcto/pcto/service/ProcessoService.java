package itiseveri.pcto.pcto.service;

import itiseveri.pcto.pcto.model.Processo;

import java.util.List;
import java.util.Optional;

public interface ProcessoService {
    List<Processo> getAllProcessi();
    Optional<Processo> getProcessoById(long id);
    void createOrUpdateProcesso(Processo processo);
    void deleteProcesso(long id);
}
