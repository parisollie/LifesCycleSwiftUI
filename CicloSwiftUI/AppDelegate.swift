//
//  AppDelegate.swift
//  CicloSwiftUI
//
//  Created by Paul Jaime Felix Flores on 14/04/23.
//

/*
 Paso 2.0, creamos el método principal del app delegate y lo importamos de UIkit
 Por lo regular aqui se configura Firebase
*/
import UIKit

class AppDelegate: NSObject ,UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("Hola desde app delegate")
        return true
    }
}
