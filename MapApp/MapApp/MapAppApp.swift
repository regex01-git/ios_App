//
//  MapAppApp.swift
//  MapApp
//
//  Created by MacBook on 22/10/25.
//

import SwiftUI
import FirebaseCore

@main
struct ValetAppApp: App {
    @StateObject private var authViewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authViewModel)
        }
    }
}
