//
//  ContentView.swift
//  GestionAmigos
//
//  Created by Guillermo Montalban Martinez on 19/11/21.
//

import SwiftUI

struct VistaPrincipal: View {
    @State private var nombreUsuario:String = ""
    @State private var apellidoUsuario: String = ""
    var body: some View {
        ZStack {
            Color(red: 48.0/255.0, green: 163.0/255.0, blue: 232.0/255.0)
                .ignoresSafeArea()
            VStack {
                Image("imagen").resizable()
                    .padding()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .shadow(color: .red, radius: 10)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 5))
            
                Saludo(nombreUsuario,apellidoUsuario)
            
                TextField("Introduzca su nombre", text: $nombreUsuario)
                    .foregroundColor(Color.white)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                
                TextField("Introduzca su apellido", text: $apellidoUsuario)
                    .foregroundColor(Color.white)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                
            
                Button(action:{nombreUsuario=""; apellidoUsuario=""}) {
                    Text("Reset").foregroundColor(Color.white)
                }
                .disabled(nombreUsuario.isEmpty)
                .disabled(apellidoUsuario.isEmpty)
            
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VistaPrincipal()
                .preferredColorScheme(.light)
            VistaPrincipal()
                .preferredColorScheme(.dark)
            VistaPrincipal().previewDevice((PreviewDevice(rawValue: "iPad Air (4th generation)")))
                .preferredColorScheme(.light)
                
        }
        
    }
}
