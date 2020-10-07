//
//  OrderHistory.swift
//  SwiftUI Essentials
//
//  Created by Ivan Samalazau on 10/6/20.
//

import SwiftUI

struct OrderHistory: View {
    @ObservedObject var dataSource: OrderDataSource

    var body: some View {
        List(dataSource.orders) { order in
            NavigationLink(destination: OrderDetail(order: order)) {
                HistoryCell(order: order)
            }
        }
        .navigationBarTitle(Text("Order History"))
    }
}

struct HistoryCell: View {
    var order: CompletedOrder

    private var dateFormatter:  DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter
    }

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(order.summary)
                Text(dateFormatter.string(from: order.purchaseDate))
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            if order.order.includeRedPepperFlakes {
                Image(systemName: "flame.fill")
            }
        }
    }
}
