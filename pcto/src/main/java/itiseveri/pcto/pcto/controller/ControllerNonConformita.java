package itiseveri.pcto.pcto.controller;

import itiseveri.pcto.pcto.model.Lavoratore;
import itiseveri.pcto.pcto.model.NonConformita;
import itiseveri.pcto.pcto.service.NonConformitaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.util.List;

@Controller
public class ControllerNonConformita {

    @Autowired
    NonConformitaService nonConformitaService;

    @RequestMapping(value = "/listaNonConfAperte", method = RequestMethod.GET)
    public String showListaNonConformitaAperte(ModelMap model){
        List<NonConformita> nonConformitaListAperte=nonConformitaService.getNonConformitaAperte();
        model.addAttribute("nonConformitaListAperte", nonConformitaListAperte);
        return "listaNonConformitaAperte";
    }


    @RequestMapping(value = "/listaNonConfChiuse", method = RequestMethod.GET)
    public String showListaNonConformitaChiuse(ModelMap model){
        List<NonConformita> nonConformitaListChiuse=nonConformitaService.getNonConformitaChiuse();
        model.addAttribute("nonConformitaListChiuse", nonConformitaListChiuse);
        return "listaNonConformitaChiuse";
    }

    @RequestMapping(value = "/showFormNonConformita", method = RequestMethod.GET)
    public String addNewNonConformita(ModelMap model){
        NonConformita nonConformita=new NonConformita();
        model.addAttribute("nonConformita", nonConformita);
        return "addNonConformita";
    }

    @RequestMapping(value = "/registraNonConformita", method = RequestMethod.POST)
    public String addNonConformita(@ModelAttribute("nonConformita") NonConformita nonConformita){
        nonConformitaService.createOrUpdateNonConformita(nonConformita);
        return "redirect:/listaNonConfAperte";
    }
    @RequestMapping(value = "/editFase/{codice}")
    public String editFase(@PathVariable("codice") long codice, ModelMap model){
        model.addAttribute("nonConformita", nonConformitaService.getNonConformitaById(codice));
        return "aggiornaNonCOnformita";
    }

}
