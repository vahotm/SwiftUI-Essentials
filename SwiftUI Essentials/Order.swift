//
//  Order.swift
//  SwiftUI Essentials
//
//  Created by Ivan Samalazau on 10/5/20.
//

import Foundation

struct Order {
    var title: String
    var includeSalt: Bool
    var includeRedPepperFlakes: Bool
    var quantity: Int

    static var empty: Self {
        Order(title: "Avocado toast",includeSalt: false, includeRedPepperFlakes: false, quantity: 1)
    }
}

struct CompletedOrder: Identifiable {
    let id = UUID()
    var summary: String
    var purchaseDate: Date
    var order: Order

    init(summary: String, purchaseDate: Date, order: Order) {
        self.summary = summary
        self.purchaseDate = purchaseDate
        self.order = order
    }

    init(order: Order) {
        var summary = order.title
        if order.includeSalt {
            summary = "Salty ".appending(summary)
        }
        if order.includeRedPepperFlakes {
            summary = summary.appending(" with pepper flakes")
        }
        if order.quantity > 1 {
            summary = "\(order.quantity) x ".appending(summary)
        }
        self.init(summary: summary, purchaseDate: Date(), order: order)
    }
}

let testData = [
    CompletedOrder(summary: "Rye with butter", purchaseDate: Date(timeIntervalSince1970: 1000000), order: Order.empty),
    CompletedOrder(summary: "Multi-grain toast", purchaseDate: Date(timeIntervalSince1970: 1100000), order: Order.empty),
    CompletedOrder(summary: "Wheat with tapenade", purchaseDate: Date(timeIntervalSince1970: 1200000), order: Order.empty),
    CompletedOrder(summary: "Rye with honey", purchaseDate: Date(timeIntervalSince1970: 1300000), order: Order.empty)
]
