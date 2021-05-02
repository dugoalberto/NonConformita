package itiseveri.pcto.pcto.repository;

import itiseveri.pcto.pcto.model.Lavoratore;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LavoratoreRepository extends CrudRepository<Lavoratore, Long> {}