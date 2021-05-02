package itiseveri.pcto.pcto.repository;

import itiseveri.pcto.pcto.model.Prodotto;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProdottoRepository extends CrudRepository<Prodotto, Long> {}