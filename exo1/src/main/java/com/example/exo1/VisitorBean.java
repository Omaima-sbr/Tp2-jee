package com.example.exo1;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class VisitorBean implements Serializable {
    private List<String> visitors;

    public VisitorBean() {
        visitors = new ArrayList<>();
    }

    // Ajouter un visiteur s'il n'est pas déjà présent
    public void addVisitor(String name) {
        if (name != null && !name.isEmpty() && !visitors.contains(name)) {
            visitors.add(name);
        }
    }

    // Récupérer la liste des visiteurs
    public List<String> getVisitors() {
        return visitors;
    }
}
