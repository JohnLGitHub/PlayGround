//
//  Pizza.swift
//  PizzaApp
//
//  Created by jlorenzo on 1/10/16.
//  Copyright © 2016 Lone Wolf. All rights reserved.
//

import Foundation


class Pizza {
    var tamano : String?
    var tipoMasa : String?
    var tipoQueso : String?
    var ingrediente : [String] = [String]()
    let cantidadMaxIngredientes:Int
    let cantidadMinIngredientes:Int
    
    
    init () {
        self.tamano = ""
        self.tipoMasa = ""
        self.tipoQueso = ""
        self.cantidadMaxIngredientes = 5
        self.cantidadMinIngredientes = 1
    }
    
    func tamanos() -> [String] {
        let tamanosPizza: [String] = ["chica", "mediana", "grande"]
        return tamanosPizza
    }
    
    func tiposDeMasa() -> [String] {
        let tiposDeMasa : [String] = ["delgada", "crujiente", "gruesa"]
        return tiposDeMasa
    }
    
    func tiposDeQueso() -> [String] {
        let tiposQuesos : [String] = ["mozarela","cheddar","parmesano","sin queso"]
        return tiposQuesos
    }
    
    func ingredientes() -> [String] {
        let ingrediente : [String] = ["jamón", "pepperoni", "pavo", "salchicha", "aceituna", "cebolla", "pimiento", "piña", "anchoa"]
        return ingrediente
    }
    
    
    func obtenerStringIngredientes() -> String {
        var ingreditesString : String = String()
        
        for item in ingrediente {
            ingreditesString.appendContentsOf(item + "\n")
            
        }
        
        return ingreditesString
        
    }
    
}







