//
//  CoffeMastersApp.swift
//  CoffeMasters
//
//  Created by Alan Munoz Lopez on 27-08-23.
//

import SwiftUI

@main
struct CoffeMastersApp: App {
    
    var menuManager = MenuManager()
    var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}
