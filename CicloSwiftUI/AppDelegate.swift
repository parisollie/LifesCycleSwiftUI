//
//  AppDelegate.swift
//  CicloSwiftUI
//
//  Created by Paul Jaime Felix Flores on 14/04/23.
//

/*
 Paso 2.0, creamos el método principal del app delegate y lo importamos de UIkit
 Por lo regular aqui se configura Firebase
 
 SwiftUI ya no usa AppDelegate directamente, pero si necesitas usar APIs antiguas
 (como notificaciones, ciclo tradicional, servicios de fondo, etc), puedes adaptarlo así.

 Tu propiedad hace eso: conecta tu app SwiftUI con el ciclo de vida de UIKit,
 permitiéndote usar funciones como application(_:didFinishLaunchingWithOptions:).

 Esto es como decirle a SwiftUI: “Oye, si alguien llama a algo del ciclo clásico,
 redirígelo a este AppDelegate que yo tengo”.
*/
import UIKit

class AppDelegate: NSObject ,UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("Hola desde app delegate")
        return true
    }
}
