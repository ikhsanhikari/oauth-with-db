package com.hikari.oauth.oauthsample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;

@Controller
public class OauthController {
    @RequestMapping("/hikari")
    public void hikari(Model model, @RequestParam(required = false) String nama){
        model.addAttribute("waktu",new Date());
        if(nama!=null && !nama.isEmpty()){
            model.addAttribute("pesan","Haloo "+nama);
        }
    }

    @RequestMapping("/profil")
    public void profil(Model model){

    }

    @RequestMapping("/login")
    public void login(Model model){

    }
}
