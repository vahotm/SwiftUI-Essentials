//
//  ContentView.swift
//  SwiftUI Essentials
//
//  Created by Ivan Samalazau on 10/5/20.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            let dataSource = OrderDataSource(orders: testData)
            NewOrderView(dataSource: dataSource)
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("New order")
                }
            OrderHistory(dataSource: dataSource)
                .tabItem {
                    Image(systemName: "tray.full")
                    Text("History")
                }
        }
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
