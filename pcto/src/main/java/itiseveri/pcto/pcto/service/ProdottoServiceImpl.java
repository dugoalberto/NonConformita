package itiseveri.pcto.pcto.service;

import itiseveri.pcto.pcto.model.Prodotto;
import itiseveri.pcto.pcto.repository.ProdottoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service("prodottoService")
public class ProdottoServiceImpl implements ProdottoService {

    @Autowired
    private ProdottoRepository prodottoRepository;

    @Override
    public List<Prodotto> getAllProdotti() {
        List<Prodotto> prodottoList= (List<Prodotto>) prodottoRepository.findAll();
        return prodottoList;
    }

    @Override
    public Optional<Prodotto> getProdottoById(long id) {
        return Optional.empty();
    }

    @Override
    public void createOrUpdateProdotto(Prodotto prodotto) {
        Optional<Prodotto> prodotto1= prodottoRepository.findById(prodotto.getCodice());
        if(prodotto1.isPresent()){
            Prodotto newProdotto= prodotto1.get();
            newProdotto.setNome(prodotto.getNome());
            newProdotto.setGrandezza(prodotto.getGrandezza());
            newProdotto.setNonConformita(prodotto.getNonConformita());
            prodottoRepository.save(newProdotto);
        }else{
            prodottoRepository.save(prodotto);
        }

    }

    @Override
    public void deleteProdotto(long id) {

    }
}
