////
////  environment_OBJECTApp.swift
////  environment_OBJECT
////
////  Created by MacBook on 10/10/25.
////
//
//import SwiftUI
//
//@main
//struct environment_OBJECTApp: App {
//    @StateObject var common = stateobjects()
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//                .environmentObject(common)
//        }
//    }
//}
////
///
///@main
struct environment_OBJECTApp: App {
    @StateObject var common = stateobject()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(common)
        }
    }
}

