//: Velocímetro automovil digital

import UIKit

enum Velocidades : Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    
    var velocidad : Velocidades
    
    init() {
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        
        let velocidadActual = velocidad.rawValue
        var nombreVelocidad = ""
        
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            nombreVelocidad = "Apagado"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            nombreVelocidad = "Velocidad Baja"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            nombreVelocidad = "Velocidad Media"
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            nombreVelocidad = "Velocidad Alta"
        }
        
        return (velocidadActual, nombreVelocidad)
        
    }
}

let auto = Auto()

for i in 1...20 {
    let velocimetro =  auto.cambioDeVelocidad()
    print("\(i). \(velocimetro)")
}


