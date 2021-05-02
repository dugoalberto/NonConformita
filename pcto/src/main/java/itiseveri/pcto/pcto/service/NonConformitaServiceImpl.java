package itiseveri.pcto.pcto.service;

import itiseveri.pcto.pcto.model.NonConformita;
import itiseveri.pcto.pcto.repository.NonConformitaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service("nonConformitaService")
public class NonConformitaServiceImpl implements NonConformitaService{
    @Autowired
    private NonConformitaRepository nonConformitaRepository;

    @Override
    public List<NonConformita> getNonConformitaAperte() {
        List<NonConformita> nonConformitaList=(List<NonConformita>) nonConformitaRepository.findAllNonConformitaAperte();
        return nonConformitaList;
    }

    @Override
    public List<NonConformita> getNonConformitaChiuse() {
        List<NonConformita> nonConformitaList=(List<NonConformita>) nonConformitaRepository.findAllNonConformitaChiuse();
        return nonConformitaList;
    }

    @Override
    public Optional<NonConformita> getNonConformitaById(long id) {
        Optional<NonConformita> nonConformita=nonConformitaRepository.findById(id);
        return nonConformita;
    }

    @Override
    public void createOrUpdateNonConformita(NonConformita nonConformita) {
        Optional<NonConformita> nonConformita1=nonConformitaRepository.findById(nonConformita.getCodice());
        if(nonConformita1.isPresent()){
            NonConformita newNonConformita =nonConformita1.get();
            newNonConformita.setDataInizio(nonConformita.getDataInizio());
            newNonConformita.setFase(nonConformita.getFase());
          if (nonConformita.getFase().equals("Chiusa")) {
              String data;
              Date data1= new Date();
              SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
               data = format.format( data1 );

            newNonConformita.setDataFine(data);
          }
            newNonConformita.setNomeSegnalatore(nonConformita.getNomeSegnalatore());
            newNonConformita.setDescrizione(nonConformita.getDescrizione());
            newNonConformita.setCodiceProdotto(nonConformita.getCodiceProdotto());
            newNonConformita.setTipologia(nonConformita.getTipologia());
            nonConformitaRepository.save(newNonConformita);

        } else {
            nonConformitaRepository.save(nonConformita);
        }
    }

    @Override
    public void deleteNonConformita(long id) {
        nonConformitaRepository.deleteById(id);
    }
}
