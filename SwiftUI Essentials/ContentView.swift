//
//  ContentView.swift
//  SwiftUI Essentials
//
//  Created by Ivan Samalazau on 10/5/20.
//

import SwiftUI

struct OrderForm: View {
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
//        withAnimation {
//        }
    }
}

struct OrderForm_Previews: PreviewProvider {
    static var previews: some View {
        OrderForm()
    }
}
