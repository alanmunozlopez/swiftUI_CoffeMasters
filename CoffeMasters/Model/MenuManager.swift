//
//  MenuManager.swift
//  CoffeMasters
//
//  Created by Alan Munoz Lopez on 30-08-23.
//

import Foundation
import Alamofire

class MenuManager: ObservableObject {
    @Published var menu: [Category] = [
        Category(
            name: "Hot Coffe",
            products: [
                Product(id: 1, name: "Cortado", price: 2.50),
                Product(id: 2, name: "Capuccino", price: 3.20),
                Product(id: 3, name: "Americano", price: 2.00)
            ]
        )
    ]
    
    init() {
        refreshItemsFromNetwork()
    }
    
    func refreshItemsFromNetwork()  {
            AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
                .responseDecodable(of: [Category].self) { response in
                    if let menuFromNetwork = response.value {
                        print(response.value)
                        self.menu = menuFromNetwork
                    }
                }
        }
}
