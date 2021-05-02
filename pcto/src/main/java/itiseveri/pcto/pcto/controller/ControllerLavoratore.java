package itiseveri.pcto.pcto.controller;

import itiseveri.pcto.pcto.model.Lavoratore;
import itiseveri.pcto.pcto.service.LavoratoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class ControllerLavoratore {

    @Autowired
    LavoratoreService lavoratoreService;

    @RequestMapping(value = "/listaLav", method = RequestMethod.GET)
    public String showListaLavoratori(ModelMap model){
        List<Lavoratore> lavoratoreList=lavoratoreService.getAllLavoratori();
        model.addAttribute("lavoratoreList", lavoratoreList);
        return "listaLavoratori";
    }

    @RequestMapping(value = "/showFormLavoratore", method = RequestMethod.GET)
    public String addNewLavoratore(ModelMap model){
        Lavoratore lavoratore=new Lavoratore();
        model.addAttribute("lavoratore", lavoratore);
        return "addLavoratore";
    }
    @RequestMapping(value = "/registraLavoratore", method = RequestMethod.POST)
    public String addLavoratore(@ModelAttribute("lavoratore")Lavoratore lavoratore){
        lavoratoreService.createOrUpdateLavoratore(lavoratore);
        return "redirect:/listaLav";
    }

    @RequestMapping(value = "/editLavoratore/{matricola}")
    public String editLav(@PathVariable("matricola") long matricola, ModelMap model){
        model.addAttribute("lavoratore", lavoratoreService.getLavoratoreById(matricola));
        return "aggiornaLavoratore";
    }

    @RequestMapping(value = "/eliminaLavoratore/{matricola}")
    public String eliminaLav(@PathVariable("matricola") long matricola){
        lavoratoreService.deleteLavoratore(matricola);
        return "redirect:/listaLav";

    }
}
