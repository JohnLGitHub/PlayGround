//: Playground - noun: a place where people can play

import UIKit



enum Velocidades : Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){

         self = velocidadInicial
    }
}


class Auto  {
    var velocidad : Velocidades
    
    init(){
        self.velocidad = .Apagado
        print("Estoy en el Init de la Clase Auto")
    }
    
    func cambioDeVelocidad () -> (actual : Int, velocidadEnCadena: String){
        
        let descripcionVelocidad : String
        let velociadAnterior  = velocidad
        
        switch velocidad {
        case .Apagado :
            velocidad = .VelocidadBaja
            descripcionVelocidad = "Apagado"
        case .VelocidadBaja :
            velocidad = .VelocidadMedia
            descripcionVelocidad = "Velocidad Baja"
        case .VelocidadMedia :
            velocidad = .VelocidadAlta
            descripcionVelocidad = "Velodidad Media"
        case .VelocidadAlta :
            velocidad = .VelocidadMedia
            descripcionVelocidad = "Velocidad Alta"
            
        }
        
        let resultado = (velociadAnterior.rawValue, descripcionVelocidad)
        
    
        return resultado
        
    }
}


var velocidad = Auto()

for i in 1...20 {
    var resultado = velocidad.cambioDeVelocidad()
    print("\(i). \(resultado.actual),\(resultado.velocidadEnCadena)")
    
}

