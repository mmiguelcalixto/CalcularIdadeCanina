//
//  ContentView.swift
//  tercaFeiraAula1
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var idadeHumana: String = ""
    @State private var idadeCanina: String = ""
    
    func calcularIdade() -> Void {
        if let idade = Int(idadeHumana), idade > 0 {
           let resultado = idade * 7
            idadeCanina = "\(resultado) anos"
        } else {
            idadeCanina = "Digite uma idade válida."
        }
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Calculadora de Idade Canina")
            
            TextField(
                    "Digite a idade humana",
                    text: $idadeHumana
                )
            
            Text("A idade canina é \(idadeCanina)")
    
            Button(action: calcularIdade) {
                Text("Calcular")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
