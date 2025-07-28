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
    
    /**
     V-85,Paso 1.0 creamos un constructor llamado init
     El constructor init() se ejecuta justo cuando se lanza la app, antes de mostrar la
     interfaz.
     Esto es útil para ejecutar configuración inicial, cargar datos, o imprimir algo como
     El "punto cero" del ciclo de vida.
    */
    init (){
        inicio()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
          /**Paso 1.3, inyectamos
            Esto es un observador reactivo: cada vez que el estado (scenePhase) cambia, este bloque se ejecuta. Así puedes reaccionar a eventos del ciclo de vida.
           Esto imprime el estado actual de la app, lo cual es útil para depurar, pausar animaciones, guardar datos, etc.
           */
        }.onChange(of: scenePhase){(phase) in
            switch phase {
                /**
                 Ponemos las diferentes fases:
                 
                .active → cuando el usuario la está usando
                .inactive → cuando se está yendo de la app pero aún no está en segundo plano
                .background → cuando ya no está visible, pero sigue viva (hasta que el sistema la cierre)
                
                */
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
