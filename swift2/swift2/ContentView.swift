//
//  ContentView.swift
//  swift2
//
//  Created by MacBook on 03/10/25.
//

import SwiftUI

struct ContentView: View {
   @StateObject var first=Observable()
    var body: some View {
        VStack {
           Text("\(first.count)")
            Button("next"){
                first.count += 1
            }
            secondScreen(first:first)
        }
        
       
        
    }
}

#Preview {
    ContentView()
}
