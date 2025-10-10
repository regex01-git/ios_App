////
////  ContentView.swift
////  environment_OBJECT
////
////  Created by MacBook on 10/10/25.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    @EnvironmentObject var common : stateobjects
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world! \(common.count)")
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    ContentView()
//}

import SwiftUI
struct ContentView: View {
    @EnvironmentObject var common: stateobject

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! \(common.count)")
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
