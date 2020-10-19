//
//  ParksDepartmentWorkOrdersApp.swift
//  ParksDepartmentWorkOrders
//
//  Created by Thomas Prezioso on 10/19/20.
//

import SwiftUI

@main
struct ParksDepartmentWorkOrdersApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
