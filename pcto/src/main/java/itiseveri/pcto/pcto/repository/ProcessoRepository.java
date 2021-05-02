package itiseveri.pcto.pcto.repository;

import itiseveri.pcto.pcto.model.Processo;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProcessoRepository extends CrudRepository<Processo, String > {}
