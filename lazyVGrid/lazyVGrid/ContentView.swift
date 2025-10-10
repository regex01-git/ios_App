//
//  ContentView.swift
//  lazyVGrid
//
//  Created by MacBook on 06/10/25.
//

import SwiftUI

    
    struct ContentView: View {
        var columns=Array(repeating:GridItem(.flexible(),spacing:20),count:4)
        var body: some View {
            
            ScrollView(.horizontal){
                
                
                LazyHGrid(rows:columns,spacing: 5){
                    ForEach(0..<150,id:\.self){
                        index in Rectangle().fill(.red).frame(width: 100, height: 100)
                    }
                }
            }
        }
    }


#Preview {
    ContentView()
}
