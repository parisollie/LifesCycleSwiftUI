//
//  ContentView.swift
//  CicloSwiftUI
//
//  Created by Paul Jaime Felix Flores on 14/04/23.
//

import SwiftUI

//V-86,paso 3.0 Ciclo de Vida de View
struct ContentView: View {
    
    @State private var contenido = ""
    @State private var show = true
    
    var body: some View {
        VStack{
            if show {
                Text("Hello world")
                    .padding()
                    //Cuando aparece la vista : OnAppear y  onDisappear
                    .onAppear{
                        print("Aparecio texto de bienvenida")
                    }
                    //Vuando quitamos la vista
                    .onDisappear{
                        print("Desaparecio texto de bienvenida")
                    }
                
            }
            
            Button(action: {
                self.show.toggle()
            }){
                Text("Desaparecer texto")
            }
            .onAppear{
                print("Aparecio el boton")
            }
            TextField("Titulo del texto ", text: $contenido)
                .onAppear{
                    self.contenido = "Contenido que viene desde otra view"
                }
            
        }.onAppear{
            print("Aparecio el vstack")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
