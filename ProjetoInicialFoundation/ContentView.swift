//
//  ContentView.swift
//  ProjetoInicialFoundation
//
//  Created by user on 17/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = MyViewModel()
    
    var body: some View {
            VStack {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    TextField("Insira seu nome aqui", text: Binding(
                        get: {self.viewModel.nome ?? "" },
                        set: {self.viewModel.handleInput($0)}
                    ))
                        .fixedSize()
                        
                    Text("Boa tarde,")
                    Text(viewModel.nome ?? "Usuario Desconhecido")
                }
                .padding(22)
                
                    .background(Color.green)
                VStack {
                    Text("Você já apertou \(viewModel.contador) vezes \(viewModel.nome ?? "Usuario Desconhecido")")
                        .padding(44)
                    Button("Clickar"){
                        viewModel.incrementCount()
                    }
                    .background(Color.white)
                    .padding()
                    
                }.padding(10)
                    .background(Color.red)
                //Chamada de componente personalizado
                Componente()
            }
            .padding(50)
            .background(Color.blue)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
