//
//  ContentView.swift
//  GestionAmigos
//
//  Created by Guillermo Montalban Martinez on 19/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.dark)
            ContentView().previewDevice((PreviewDevice(rawValue: "iPad Air (4th generation)")))
                .preferredColorScheme(.light)
                
        }
        
    }
}
