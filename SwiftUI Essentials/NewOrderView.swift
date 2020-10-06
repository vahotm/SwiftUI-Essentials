//
//  NewOrder.swift
//  SwiftUI Essentials
//
//  Created by Ivan Samalazau on 10/6/20.
//

import SwiftUI

struct NewOrderView: View {
    @ObservedObject var dataSource: OrderDataSource
    @State private var order = Order.empty
    
    var body: some View {
        VStack {
            Text("Avocado Toast").font(.title)

            Toggle(isOn: $order.includeSalt, label: {
                Text("Include salt")
            })
            Toggle(isOn: $order.includeRedPepperFlakes, label: {
                Text("Include red pepper flakes")
            })
            Stepper(value: $order.quantity, in: 1...10, label: {
                Text("Quantity: \(order.quantity)")
            })

            Button(action: submitOrder, label: {
                Text("Order")
            })
        }
    }

    func submitOrder() {
        dataSource.orders.append(CompletedOrder(order: order))
    }
}
