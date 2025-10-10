//
//  ContentView.swift
//  Webkit
//
//  Created by MacBook on 08/10/25.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
      
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Go to the google"){
                show = !show
            }.frame(width: 150,height: 100).background(Rectangle().cornerRadius(15))
          
        }
        .padding()
        .fullScreenCover(isPresented: $show){
           WebViewScreen(show: $show)
               
        }
       
    }
}

#Preview {
    ContentView()
}
