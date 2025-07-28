//
//  ContentView.swift
//  CicloSwiftUI
//
//  Created by Paul Jaime Felix Flores on 14/04/23.
//

import SwiftUI

/**
 V-86,paso 3.0 Ciclo de Vida de View
 
 El ciclo de vida de una vista en SwiftUI se refiere a los momentos en que una
 vista:
 
 -Aparece por primera vez en pantalla (onAppear)
 -Desaparece de la pantalla (onDisappear)
 -Se actualiza o cambia porque alguna variable de estado cambió
  (@State, @Binding, etc.)
 -En SwiftUI todo es declarativo, así que en vez de imperativamente decir “muéstrame esto”, tú describes el estado y el framework decide qué mostrar y cuándo.
 */
struct ContentView: View {
    /**
     Estas propiedades son estados locales de la vista. Cuando cambian, la vista se vuelve a renderizar automáticamente.

     -contenido se vincula al TextField (binding bidireccional)
     -show decide si el texto "Hello World" se muestra o no
     */
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
