//
//  ContentView.swift
//  ParksDepartmentWorkOrders
//
//  Created by Thomas Prezioso on 10/19/20.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(0 ..< 5) { item in
                Text("Hello World")
            }.navigationTitle("Work Orders")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
