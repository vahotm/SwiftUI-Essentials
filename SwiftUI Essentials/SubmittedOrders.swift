//
//  SubmittedOrders.swift
//  SwiftUI Essentials
//
//  Created by Ivan Samalazau on 10/7/20.
//

import Foundation

class OrderDataSource: ObservableObject {
    @Published var orders: [CompletedOrder]

    init(orders: [CompletedOrder] = []) {
        self.orders = orders
    }
}

let testDataSource = OrderDataSource(orders: testData)
