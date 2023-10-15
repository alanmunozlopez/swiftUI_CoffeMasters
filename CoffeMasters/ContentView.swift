//
//  ContentView.swift
//  CoffeMasters
//
//  Created by Alan Munoz Lopez on 27-08-23.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            OrdersPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
                .badge(cartManager.cart.count)
            InfoPage()
                .tabItem {
                    Image(systemName: "info")
                    Text("Info")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MenuManager())
            .environmentObject(CartManager())
    }
}
