//
//  swift3App.swift
//  swift3
//
//  Created by MacBook on 03/10/25.
//

import SwiftUI

@main
struct swift3App: App {
   @ObservedObject var first=Observable()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(first)
        }
    }
}
