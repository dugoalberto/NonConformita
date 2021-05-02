package itiseveri.pcto.pcto.service;


import itiseveri.pcto.pcto.model.Prodotto;

import java.util.List;
import java.util.Optional;

public interface ProdottoService {
    List<Prodotto> getAllProdotti();
    Optional<Prodotto> getProdottoById(long id);
    void createOrUpdateProdotto(Prodotto prodotto);
    void deleteProdotto(long id);
}
