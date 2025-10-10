//
//  ContentView.swift
//  first_swift
//
//  Created by MacBook on 01/10/25.
//

import SwiftUI
import CoreData  // Required for managedObjectContext

struct ContentView: View {
    // Access the managed object context from the environment
//    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
        Text("Hello, SwiftUI + Core Data!")
            .padding()
    }
}

#Preview {
    ContentView()
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
