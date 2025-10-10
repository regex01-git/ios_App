//
//  first_swiftApp.swift
//  first_swift
//
//  Created by MacBook on 01/10/25.
//

import SwiftUI

@main
struct first_swiftApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
