package itiseveri.pcto.pcto.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class ControllerPrincipale {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(){
        return "index";
    }

    @RequestMapping(value = "/indexLavoratore", method = RequestMethod.GET)
    public String homeL(){
        return "indexLavoratore";
    }

}



