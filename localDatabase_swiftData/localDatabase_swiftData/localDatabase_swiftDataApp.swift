//
//  localDatabase_swiftDataApp.swift
//  localDatabase_swiftData
//
//  Created by MacBook on 03/10/25.
//

import SwiftUI

@main
struct localDatabase_swiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.modelContainer(for:dataItem.self)
    }
}
