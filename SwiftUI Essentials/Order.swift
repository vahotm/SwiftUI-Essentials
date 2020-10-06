//
//  Order.swift
//  SwiftUI Essentials
//
//  Created by Ivan Samalazau on 10/5/20.
//

import Foundation

struct Order {
    enum Bread: String, CaseIterable, Identifiable {
        var id: String { rawValue }

        case wheat = "Wheat"
        case rye = "Rye"
        case sourdough = "Sourdough"
    }

    enum Spread: String, CaseIterable, Identifiable {
        var id: String { rawValue }

        case none = "None"
        case peanutButter = "Peanut butter"
        case honey = "Honey"
    }

    let title =  "Avocado toast"
    var bread: Bread = .wheat
    var spread: Spread = .none
    var includeSalt = false
    var includeRedPepperFlakes = false
    var quantity: Int = 1

    var summary: String {
        var summary = "Toast"
        if includeSalt {
            summary = "Salty ".appending(summary.lowercased())
        }
        if includeRedPepperFlakes {
            summary = summary.appending(" with pepper")
        }
        if quantity > 1 {
            summary = "\(quantity) x ".appending(summary)
        }
        return summary
    }

    static var empty: Self {
        Order()
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
        self.init(summary: order.summary, purchaseDate: Date(), order: order)
    }
}

let testData = [
    CompletedOrder(summary: "Rye with butter", purchaseDate: Date(timeIntervalSince1970: 1000000), order: Order.empty),
    CompletedOrder(summary: "Multi-grain toast", purchaseDate: Date(timeIntervalSince1970: 1100000), order: Order.empty),
    CompletedOrder(summary: "Wheat with tapenade", purchaseDate: Date(timeIntervalSince1970: 1200000), order: Order.empty),
    CompletedOrder(summary: "Rye with honey", purchaseDate: Date(timeIntervalSince1970: 1300000), order: Order.empty)
]
