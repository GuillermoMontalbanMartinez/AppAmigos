//
//  Saludo.swift
//  GestionAmigos
//
//  Created by Guillermo Montalban Martinez on 19/11/21.
//

import SwiftUI

struct Saludo: View {
    private var mensaje:String;
    init(_ nombreUsuario:String, _ apellidoUsuario:String) {
        if nombreUsuario.isEmpty || apellidoUsuario.isEmpty {
            mensaje = "Hola, ¿qué tal?"
        } else {
            mensaje = "Hola, \(nombreUsuario) \( apellidoUsuario)"
        }
    }
    var body: some View {
        Text(mensaje)
            .font(.title)
            .fontWeight(.black)
            .foregroundColor(Color.white)
            .padding()
    }
}

struct Saludo_Previews: PreviewProvider {
    static var previews: some View {
        Saludo("nombre", "apellido")
    }
}
