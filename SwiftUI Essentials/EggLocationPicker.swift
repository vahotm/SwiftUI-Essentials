//
//  EggLocationPicker.swift
//  SwiftUI Essentials
//
//  Created by Ivan Samalazau on 10/7/20.
//

import SwiftUI

struct EggLocationPicker: View {
    @Binding var location: UnitPoint

    var body: some View {
        Text("TBD")
            .navigationBarTitle(Text("Egg Location"))
            .navigationBarItems(trailing:
                                    Button(action: reset, label: {
                                        Text("Reset")
                                    }))
    }

    private func reset() {

    }
}
