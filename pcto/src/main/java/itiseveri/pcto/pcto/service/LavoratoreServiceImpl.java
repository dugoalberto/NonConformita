package itiseveri.pcto.pcto.service;

import itiseveri.pcto.pcto.model.Lavoratore;
import itiseveri.pcto.pcto.repository.LavoratoreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service("lavoratoreService")
public class LavoratoreServiceImpl implements LavoratoreService{

    @Autowired
    private LavoratoreRepository lavoratoreRepository;

    @Override
    public List<Lavoratore> getAllLavoratori() {
        List<Lavoratore> lavoratoreList=(List<Lavoratore>) lavoratoreRepository.findAll();
        return lavoratoreList;
    }

    @Override
    public Optional<Lavoratore> getLavoratoreById(long matricola) {
        Optional<Lavoratore> lavoratore=lavoratoreRepository.findById(matricola);
        return lavoratore;

    }

    @Override
    public void createOrUpdateLavoratore(Lavoratore lavoratore) {
        Optional<Lavoratore> lavoratore1=lavoratoreRepository.findById(lavoratore.getMatricola());
        if(lavoratore1.isPresent()){
            Lavoratore newLavoratore=lavoratore1.get();
            newLavoratore.setNome(lavoratore.getNome());
            newLavoratore.setCognome(lavoratore.getCognome());
            newLavoratore.setDataNascita(lavoratore.getDataNascita());
            newLavoratore.setResidenza(lavoratore.getResidenza());
            newLavoratore.setPassword(lavoratore.getPassword());
            newLavoratore.setNomeProcesso(lavoratore.getNomeProcesso());
            lavoratoreRepository.save(newLavoratore);
        }else {
            lavoratoreRepository.save(lavoratore);
        }
    }

    @Override
    public void deleteLavoratore(long matricola) {
        lavoratoreRepository.deleteById(matricola);
    }
}
