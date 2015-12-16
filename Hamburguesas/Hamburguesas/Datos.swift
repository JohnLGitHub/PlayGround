//
//  Datos.swift
//  Hamburguesas
//
//  Created by jlorenzo on 12/14/15.
//  Copyright © 2015 Lone Wolf. All rights reserved.
//

import Foundation
import UIKit


class ColeccionDePaises {
    let paises : [String] = ["Francia", "Alemania", "Estados Unidos", "Mexico", "Panama", "Inglaterra", "Brasil", "Peru", "Portugal", "Italia", "Chile", "Ecuador", "Costa Rica", "Uruguay", "Argentina","Australia", "Venezuela", "Colombia", "Egipto", "China" ]
    
    func obtenerPais() -> String {
        
        return paises[Int(arc4random()) % paises.count]
    }
}


class ColeccionDeHamburguesa {
    let hamburguesas : [String] = ["The Ghetto Burger", "The Burger", "Double with Cheese", "The Primetime", "The Burger", "Single Cheeseburger with an egg", "Double Griddled Burger with bacon and cheddar", "Cheeseburger with grilled onions and jalapeños" ,"A Cheeseburger, Loaded" , "The Beefy Double Cheeseburger", "Sirloin burger with cheese" , "The BBQ Burger", "Teddy's Biggest Burger", "The Hamburg burger" ,"The Office Burger", "The Prohibition", "The Soul Burger", "The Solly Burger" , "The Woodstock" , "The Company Burger"]
    
    func obtenerHamburguesas() -> String {
        
        return hamburguesas[Int(arc4random()) % hamburguesas.count]
    }
}