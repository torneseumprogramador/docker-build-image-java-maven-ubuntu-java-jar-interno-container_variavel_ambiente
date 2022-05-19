package br.com.javaDocker.javaDocker.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.javaDocker.javaDocker.modelViews.HomeView;

@RestController
public class home_controller {
    @GetMapping("/")
    public HomeView index(){
        return new HomeView();
    }
}
