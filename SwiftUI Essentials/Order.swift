//
//  Order.swift
//  SwiftUI Essentials
//
//  Created by Ivan Samalazau on 10/5/20.
//

import Foundation

struct Order {
    var includeSalt: Bool
    var includeRedPepperFlakes: Bool
    var quantity: Int

    static var empty: Self {
        Order(includeSalt: false, includeRedPepperFlakes: false, quantity: 1)
    }
}

struct CompletedOrder: Identifiable {
    let id = UUID()
    var summary: String
    var purchaseDate: Date
}
