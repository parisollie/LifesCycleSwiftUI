//
//  CicloSwiftUIApp.swift
//  CicloSwiftUI
//
//  Created by Paul Jaime Felix Flores on 14/04/23.
//

import SwiftUI

@main
struct CicloSwiftUIApp: App {
    
    //Paso 1.2, valores de entorno @, con eso llamamos las fases de la escena
    @Environment(\.scenePhase) var scenePhase
    
    //Paso 2.1,mandamos a llamar AppDelegate y lo adaptamos 
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    //V-85,Paso 1.0 creamos un constructor llamado init
    init (){
        inicio()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
          //Paso 1.3, inyectamos
        }.onChange(of: scenePhase){(phase) in
            switch phase {
                //Ponemos las diferentes fases
                case.active:
                     print("Esta activo")
                case.inactive:
                     print("Esta inactivo")
                case.background:
                     print("Esta background")
                @unknown default:
                     fatalError("Algo salio mal")
            }
        }
    }
    //Paso 1.1, creamos una función para que se ejecute al principio.
    func inicio (){
        print("Es el primero en ejecutarse")
    }
}
