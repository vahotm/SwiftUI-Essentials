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
        Form {
            Section(header: Text("Avocado Toast").font(.title)) {
                Picker(selection: $order.bread, label: Text("Bread:")) {
                    ForEach(Order.Bread.allCases) { bread in
                        Text(bread.rawValue).tag(bread)
                    }
                }
                Picker(selection: $order.spread, label: Text("Spread:")) {
                    ForEach(Order.Spread.allCases) { spread in
                        Text(spread.rawValue).tag(spread)
                    }
                }
            }

            Section {
                Toggle(isOn: $order.includeSalt, label: {
                    Text("Include salt")
                })
                Toggle(isOn: $order.includeRedPepperFlakes, label: {
                    Text("Include red pepper flakes")
                })
                Stepper(value: $order.quantity, in: 0...10, label: {
                    Text("Quantity: \(order.quantity)")
                })
            }

            Section {
                Button(action: submitOrder) {
                    Text("Order")
                }
                .disabled(order.quantity == 0)
            }
        }
        .accentColor(.green)
    }

    func submitOrder() {
        withAnimation {
            dataSource.orders.append(CompletedOrder(order: order))
            order = Order.empty
        }
    }
}
