package itiseveri.pcto.pcto.controller;

import itiseveri.pcto.pcto.model.Lavoratore;
import itiseveri.pcto.pcto.model.Prodotto;
import itiseveri.pcto.pcto.service.ProdottoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class ControllerProdotti {

    @Autowired
    ProdottoService prodottoService;

    @RequestMapping(value="/showFormProdotto", method= RequestMethod.GET)
    public String addNewProdotto(ModelMap model){
        Prodotto prodotto=new Prodotto();
        model.addAttribute("prodotto", prodotto);
        return "addProdotto";
    }

    @RequestMapping(value = "/registraProdotto", method = RequestMethod.POST)
    public String addProdotto(@ModelAttribute("prodotto") Prodotto prodotto){
        prodottoService.createOrUpdateProdotto(prodotto);
        return "redirect:/listaProd";
    }

    @RequestMapping(value = "/listaProd", method = RequestMethod.GET)
    public String showListaProdotti(ModelMap model){
        List<Prodotto> prodottoList=prodottoService.getAllProdotti();
        model.addAttribute("prodottoList", prodottoList);
        return "listaProdotto";
    }

}
