package com.example.exo3;

public class Agence {
    private String nom;
    private String ville;
    private String codePostal;

    // Constructeur par défaut (obligatoire pour un JavaBean)
    public Agence() {
    }

    // Getters
    public String getNom() {
        return nom;
    }

    public String getVille() {
        return ville;
    }

    public String getCodePostal() {
        return codePostal;
    }

    // Setters
    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public void setCodePostal(String codePostal) {
        this.codePostal = codePostal;
    }
}