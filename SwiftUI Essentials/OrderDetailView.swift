//
//  OrderDetailView.swift
//  SwiftUI Essentials
//
//  Created by Ivan Samalazau on 10/7/20.
//

import SwiftUI

struct OrderDetail: View {
    var order: CompletedOrder

    var body: some View {
        Text(order.summary)
            .navigationTitle("Completed Order")
    }
}

struct OrderDetailPlaceholder: View {
    var body: some View {
        Text("Some order detail")
    }
}
