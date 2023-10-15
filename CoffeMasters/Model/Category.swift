//
//  Category.swift
//  CoffeMasters
//
//  Created by Alan Munoz Lopez on 30-08-23.
//

import Foundation

struct Category: Decodable, Identifiable {
    var id: String {
        return self.name
    }
    var name: String
    var products: [Product] = []
}
