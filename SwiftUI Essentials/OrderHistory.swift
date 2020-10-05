//
//  OrderHistory.swift
//  SwiftUI Essentials
//
//  Created by Ivan Samalazau on 10/6/20.
//

import SwiftUI

struct OrderHistory: View {
    let previousOrders: [CompletedOrder]
    var dateFormatter:  DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter
    }

    var body: some View {
        List(previousOrders) { order in
            VStack(alignment: .leading) {
                Text(order.summary)
                Text(dateFormatter.string(from: order.purchaseDate))
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
